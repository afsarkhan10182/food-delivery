<?php

namespace App\Http\Controllers\api;

use App\AppUser;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Auth;
use App\Delivery;
use App\Order;
use App\User;
use App\Language;
use App\Text;
use DB;
use Validator;
use Redirect;
use Excel;
use Stripe;

class DboyController extends Controller
{

	public function homepage()
	{
		$res 	 = new Order;
		$text    = new Text;
		$l 		 = Language::find($_GET['lid']);

		return response()->json([

			'data' 		=> $res->history(0),
			'text'		=> $text->getAppData($_GET['lid']),
			'app_type'	=> isset($l->id) ? $l->type : 0

		]);
	}

	public function login(Request $Request)
	{
		$res = new Delivery;

		return response()->json($res->login($Request->all()));
	}

	public function forgot(Request $Request)
	{
		$res = new AppUser;

		return response()->json($res->forgot($Request->all()));
	}

	public function verify(Request $Request)
	{
		$res = new AppUser;

		return response()->json($res->verify($Request->all()));
	}

	public function updatePassword(Request $Request)
	{
		$res = new AppUser;

		return response()->json($res->updatePassword($Request->all()));
	}

	public function startRide()
	{
		$res 		 = Order::find($_GET['id']);
		$res->status = $_GET['status'];
		$res->save();
		$res->sendSms($_GET['id']);

		if ($_GET['status'] == 5) {
			$appUser = AppUser::find($res->user_id);
			$appUser->isPenalty = 0;
			$appUser->save();
		}


		return response()->json(['data' => true]);
	}

	public function cancelOrder(Request $Request)
	{
		$res 		 = Order::find($Request->get('id'));
		$res->status      = 2;
		$res->status_by   = 3;
		$res->cancelled_notes   = $Request->get('desc');
		$res->status_time    = date('d-M-Y') . ' | ' . date('h:i:A');
		$res->save();

		$appUser = AppUser::find($res->user_id);
		$appUser->isPenalty = 1;
		$appUser->save();

		$restaurant_user     = User::find($res->store_id);
		if ($restaurant_user->c_value > 0) {
			$restaurant_user->balance_amount = $res->balance_amount;
			$restaurant_user->save();
		}

		return response()->json(['data' => true]);
	}


	public function userInfo($id)
	{
		$count = Order::where('d_boy', $id)->where('status', 5)->count();

		return response()->json(['data' => Delivery::find($id), 'order' => $count]);
	}

	public function updateInfo(Request $Request)
	{
		$res 				= Delivery::find($Request->get('id'));
		$res->password      = bcrypt($Request->get('password'));
		$res->shw_password  = $Request->get('password');
		$res->save();

		return response()->json(['data' => true]);
	}

	public function updateLocation(Request $Request)
	{
		if ($Request->get('user_id') > 0) {
			$add 			= Delivery::find($Request->get('user_id'));
			$add->lat 		= $Request->get('lat');
			$add->lng 		= $Request->get('lng');
			$add->save();
		}

		return response()->json(['data' => true]);
	}
}
