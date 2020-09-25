<?php

namespace App\Http\Controllers\User;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\User;
use App\Order;
use App\Delivery;
use App\OrderItem;
use App\Admin;
use App\Exports\OrderExport;
use DB;
use Validator;
use Redirect;
use IMS;
use Excel;

class ReportController extends Controller
{

	public $folder  = "user/report.";
	/*
	|---------------------------------------
	|@Showing all records
	|---------------------------------------
	*/
	public function index()
	{
		$res = new User;
		return View($this->folder . 'index', [
			'data' => $res->getAll(),
			'delivery' => Delivery::where('store_id', Auth::user()->id)->get(),
			'form_url' => env('user') . '/report'
		]);
	}

	public function report(Request $Request)
	{
		$res = new Order;

		return View($this->folder . 'report', [
			'data' => $res->getReport($Request->all()),
			'item' => new OrderItem,
			'from' => $Request->get('from') ? date('d-M-Y', strtotime($Request->get('from'))) : null,
			'to'   => $Request->get('to') ? date('d-M-Y', strtotime($Request->get('to'))) : null,
			'user' => new User,
			'delivery' => new Delivery,
			'currency'	=> Admin::find(1)->currency

		]);
	}

	public function payment()
	{
		$res = new User;

		return View($this->folder . 'payment', ['data' => $res->getAll(), 'form_url' => env('admin') . '/paymentReport']);
	}

	public function paymentReport()
	{
		return Excel::download(new OrderExport, 'payment.xlsx');
	}
}
