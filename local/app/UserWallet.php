<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Validator;

class UserWallet extends Authenticatable
{
    protected $table = "user_wallet";

    public function addNew($data, $id)
    {
        $add            = new UserWallet;
        $add->user_id   = $id;
        $add->add_money = $data['add_money'];
        $add->save();
    }
}