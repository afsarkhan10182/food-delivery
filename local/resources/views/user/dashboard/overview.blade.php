<div class="row">
    <div class="col m-b-30">
        <div class="card ">
            <div class="   text-center card-body">
                <div class="text-success   ">
                    <div class="avatar avatar-sm ">
                        <span class="avatar-title rounded-circle badge-soft-success"><i
                                class="mdi mdi-food mdi-18px"></i> </span>

                    </div>
                    <h6 class="m-t-5 m-b-0">&nbsp;</h6>
                </div>


                <div class=" text-center">
                    <h3 style="font-size: 19px">Total Items</h3>
                </div>
                <div class="text-overline ">
                    {{ $overview['items'] }}
                </div>
            </div>
        </div>
    </div>
    <div class="col m-b-30">
        <div class="card ">
            <div class="   text-center card-body">
                <div class="text-danger   ">
                    <div class="avatar avatar-sm ">
                        <span class="avatar-title rounded-circle badge-soft-danger"><i
                                class="mdi mdi-cart mdi-18px"></i> </span>

                    </div>
                    <h6 class="m-t-5 m-b-0">&nbsp;</h6>
                </div>


                <div class=" text-center">
                    <h3 style="font-size: 19px">Total Orders</h3>
                </div>
                <div class="text-overline ">{{ $overview['order'] }}</div>
            </div>
        </div>
    </div>
    <div class="col m-b-30">
        <div class="card ">
            <div class="   text-center card-body">
                <div class="text-warning   ">
                    <div class="avatar avatar-sm ">
                        <span class="avatar-title rounded-circle badge-soft-warning"><i
                                class="mdi mdi-calendar-check mdi-18px"></i> </span>

                    </div>
                    <h6 class="m-t-5 m-b-0"> &nbsp;</h6>
                </div>


                <div class=" text-center">
                    <h3 style="font-size: 19px"> Completed Orders </h3>
                </div>
                <div class="text-overline ">{{ $overview['complete'] }}</div>
            </div>
        </div>
    </div>
    <div class="col m-b-30">
        <div class="card ">
            <div class="   text-center card-body">
                <div class="text-info   ">
                    <div class="avatar avatar-sm ">
                        <span class="avatar-title rounded-circle badge-soft-info"><i class="mdi mdi-cart mdi-18px"></i>
                        </span>

                    </div>
                    <h6 class="m-t-5 m-b-0"> &nbsp;</h6>
                </div>


                <div class=" text-center">
                    <h3 style="font-size: 19px">This Month Orders</h3>
                </div>
                <div class="text-overline ">{{ $overview['month'] }}</div>
            </div>
        </div>
    </div>


</div>
<div class="row">
    <div class="col m-b-30">
        <div class="card ">
            <div class="text-center card-body">
                <div class="text-info   ">
                    <div class="avatar avatar-sm ">
                        <span class="avatar-title rounded-circle badge-soft-info"><i class="mdi mdi-cash mdi-18px"></i>
                        </span>

                    </div>
                    <h6 class="m-t-5 m-b-0"> &nbsp;</h6>
                </div>


                <div class=" text-center">
                    <h3 style="font-size: 19px">Remaining credit balance</h3>
                </div>
                <div class="text-overline ">{{ $overview['balance_amount'] }}</div>
            </div>
        </div>
    </div>
</div>
