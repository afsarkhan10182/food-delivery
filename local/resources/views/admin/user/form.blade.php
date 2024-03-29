<div class="card py-3 m-b-30">
    <div class="card-body">
        @include('admin.language.header')
    </div>
</div>

<div class="tab-content" id="myTabContent1">

    @foreach (DB::table('language')
        ->orderBy('sort_no', 'ASC')
        ->get()
    as $l)

        <div class="tab-pane fade show" id="lang{{ $l->id }}" role="tabpanel" aria-labelledby="lang{{ $l->id }}-tab">

            <input type="hidden" name="lid[]" value="{{ $l->id }}">

            <div class="card py-3 m-b-30">
                <div class="card-body">

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="asd">Name</label>
                            {!! Form::text('l_name[]', $data->getSData($data->s_data, $l->id, 0), ['placeholder' =>
                            'Name', 'class' => 'form-control']) !!}
                        </div>

                        <div class="form-group col-md-6">
                            <label for="asd">Address</label>
                            {!! Form::text('l_address[]', $data->getSData($data->s_data, $l->id, 1), ['placeholder' =>
                            'Store Address', 'class' => 'form-control']) !!}
                        </div>
                    </div>

                </div>
            </div>

        </div>
    @endforeach

    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

        <div class="card py-3 m-b-30">
            <div class="card-body">

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputEmail6">Name</label>
                        {!! Form::text('name', null, ['required' => 'required', 'placeholder' => 'Name', 'class' =>
                        'form-control']) !!}
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputEmail4">Email (<i>This will be username</i>)</label>
                        {!! Form::email('email', null, ['required' => 'required', 'placeholder' => 'Email Address',
                        'class' => 'form-control']) !!}
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputEmail6">Phone</label>
                        {!! Form::text('phone', null, ['required' => 'required', 'placeholder' => 'Contact Number',
                        'class' => 'form-control']) !!}
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputEmail6">License Number</label>
                        {!! Form::text('license_number', null, [
                        'required' => 'required',
                        'placeholder' => 'Enter License number',
                        'class' => 'form-control',
                        ]) !!}
                    </div>

                    <div class="form-group col-md-3">
                        <label for="inputEmail4">Store Type</label>
                        <select name="store_type" class="form-control" required="required">
                            <option value="">Select</option>
                            @foreach ($types as $type)
                                <option value="{{ trim($type) }}" @if ($data->type == trim($type)) selected
                            @endif>{{ trim($type) }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-3">
                        <label for="inputEmail4">City</label>
                        <select name="city_id" class="form-control" required="required">
                            <option value="">Select City</option>
                            @foreach ($citys as $city)
                                <option value="{{ $city->id }}" @if ($data->city_id == $city->id) selected
                            @endif>{{ $city->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputEmail6">Postal code</label>
                        {!! Form::text('postcode', null, ['required' => 'required', 'placeholder' => 'Postal code',
                        'class' => 'form-control']) !!}
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail6">Address</label>
                        {!! Form::text('address', null, ['required' => 'required', 'placeholder' => 'Full Address',
                        'class' => 'form-control']) !!}
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Image (Accept Format: jpeg, png, jpg, svg)</label>
                        <input type="file" name="img" class="form-control" @if (!$data->id) required="required" @endif>
                    </div>
                </div>

                @if (isset($type))

                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="inputEmail6">Change Password (<i>Enter new password if you want to change
                                    current password.</i>)</label>
                            <input type="Password" name="password" class="form-control">
                        </div>
                    </div>

                @else

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail6">Password</label>
                            <input type="Password" name="password" class="form-control" @if (!$data->id) required="required"
                @endif>
            </div>

            <div class="form-group col-md-6">
                <label for="inputEmail4">Status</label>
                <select name="status" class="form-control">
                    <option value="0" @if ($data->status == 0) selected </beautify
                            end="  @endif">>Active</option>
                    <option value="1" @if ($data->status == 1) selected </beautify
                            end="  @endif">>Disbaled</option>
                </select>
            </div>
        </div>
        @endif

        @if ($data->img)

            <img src="{{ Asset('upload/user/' . $data->img) }}" width="50px"><br><br>

        @endif

    </div>
</div>

@if (isset($admin))

    <input type="hidden" name="admin" value="1">

    <h1 style="font-size: 20px">Setup Commision Charges</h1>
    <div class="card py-3 m-b-30">
        <div class="card-body">

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail6">Commission Type</label>
                    <select name="c_type" class="form-control">
                        <option value="0" @if ($data->c_type == 0) selected
@endif>Fixed Value</option>
<option value="1" @if ($data->c_type == 1) selected @endif>Order %
</option>
</select>
</div>

<div class="form-group col-md-6">
    <label for="inputEmail6">Commission Value</label>
    {!! Form::text('c_value', null, ['class' => 'form-control']) !!}
</div>
</div>

</div>
</div>
@endif

<h1 style="font-size: 20px">Delivery Charges & Timing</h1>
<div class="card py-3 m-b-30">
    <div class="card-body">

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputEmail6">Min Cart Value</label>
                {!! Form::text('min_cart_value', null, ['placeholder' => 'After this amount delivery will be free',
                'class' => 'form-control']) !!}
            </div>

            <div class="form-group col-md-6">
                <label for="inputEmail6">Delivery Charges</label>
                {!! Form::number('delivery_charges_value', null, ['class' => 'form-control']) !!}
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputEmail6">Opening Time <i>(select 00 if always open)</i></label>
                <select name="opening_time" class="form-control">
                    <option>Select</option>
                    @php($ot = 0)

                        @while ($ot < 23)

                            @php($ot++)

                                <option value="{{ $ot . ':00' }}" @if ($data->opening_time == $ot)
                                    selected @endif>{{ $ot . ':00' }}</option>
                            <option value="{{ $ot . ':30' }}" @if ($data->opening_time == $ot . ':30') selected @endif> {{ $ot }}:30
                            </option>

                            @endwhile
                            <option value="00" @if ($data->opening_time == '00') selected
                                @endif>00</option>
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="inputEmail6">Closing Time <i>(select 23:30 if always open)</i></label>
                        <select name="closing_time" class="form-control">
                            <option>Select</option>
                            @php($ct = 0)

                                @while ($ct < 23)

                                    @php($ct++)

                                        <option value="{{ $ct . ':00' }}" @if ($data->closing_time == $ct)
                                            selected @endif>{{ $ct . ':00' }}</option>
                                    <option value="{{ $ct . ':30' }}" @if ($data->closing_time == $ct . ':30') selected @endif>{{ $ct }}:30
                                    </option>

                                    @endwhile
                                    <option value="00" @if ($data->closing_time == '00') selected
                                        @endif>00</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail6">Estimated Delivery Time <small>(only in minutes)</small></label>
                                {!! Form::text('delivery_time', null, ['placeholder' => 'e.g 20-25', 'class' => 'form-control']) !!}
                            </div>

                            <div class="form-group col-md-6">
                                <label for="inputEmail6">Approx Per Person Cost <small>(do not include any currency
                                        sign)</small></label>
                                {!! Form::text('person_cost', null, ['placeholder' => 'e.g 200-250', 'class' => 'form-control']) !!}
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail6">Penalty Charge<small>(This charge will add to user while
                                        ordering)</small></label>
                                {!! Form::text('penalty_charge', null, ['required' => 'required', 'class' => 'form-control']) !!}
                            </div>
                        </div>
                    </div>
                </div>

                <h1 style="font-size: 20px">Credit details:</h1>
                <div class="card py-3 m-b-30">
                    <div class="card-body">

                        <div class="form-row">
                            @if (isset($data['id']) && !isset($admin))
                                <div class="form-group col-md-6">
                                    <label for="inputEmail6">Select payment mode</label>
                                    <select name="payment_mode" class="form-control">
                                        <option>Select</option>
                                        <option value="1" selected>COD</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Add Money</label>
                                    {!! Form::text('add_money', '', ['placeholder' => 'Enter the amount', 'class' => 'form-control'])
                                    !!}
                                </div>
                            @endif
                            {{-- <div class="form-group col-md-2 btn-custom">
                                --}}
                                {{-- <a
                                    href="{{ Asset(env('admin') . '/addMoneyToWallet/' . $data->id) }}" class="btn btn-success">Pay</a>
                                --}}
                                {{-- </div> --}}
                            <div class="form-group col-md-3">
                                <label for="inputEmail4">Credit Balance</label>
                            </div>
                            <div class="form-group col-md-3">
                                {!! Form::text('balance_amount', null, ['disabled' => 'disabled', 'placeholder' => 'NULL', 'class' =>
                                'form-control']) !!}
                            </div>
                            <input type="hidden" name="balance_amount" value="{{ $data->balance_amount }}">
                            <input type="hidden" name="id" value="{{ $data->id }}">

                            @if (isset($data['id']) && isset($admin))
                                <div class="form-group col-md-3">
                                    <label for="inputEmail4">Set validity period</label>
                                </div>
                                <div class="form-group col-md-3">
                                    <select id="validate_period" name="validate_period" class="form-control ">
                                        @for ($i = 1; $i <= 12; $i++)
                                            <option value="{{ $i }}" @if ($data->validate_period == $i)
                                                selected
                                        @endif>{{ $i . ' Months' }}</option>
                            @endfor
                            </select>
                        </div>
                        @endif
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <label for="inputEmail4">Credit Expires:</label>
                        </div>
                        <div class="form-group col-md-1">
                            <label for="inputEmail4">From Date</label>
                        </div>
                        <div class="form-group col-md-3">
                            {!! Form::text('wallet_expire_from', $data['wallet_expire_from'] ? date('m/d/Y',
                            strtotime($data['wallet_expire_from'])) : '', [
                            'disabled' => 'disabled',
                            'placeholder' => 'Wallet credited
                            date',
                            'class' => 'js-datepicker form-control',
                            ]) !!}
                        </div>
                        <div class="form-group col-md-1">
                            <label for="inputEmail4">To Date</label>
                        </div>
                        <div class="form-group col-md-3">
                            {{-- @if (isset($admin))
                                --}}
                                {{-- {!! Form::text('wallet_expire_to', $data['wallet_expire_to'] ?
                                date('m/d/Y', strtotime($data['wallet_expire_to'])) : '', ['disabled' => 'disabled', 'placeholder' =>
                                'Set validity period', 'class' => 'js-datepicker form-control']) !!} --}}
                                {{-- @else --}}
                                {!! Form::text('wallet_expire_to', $data['validate_period'] ? date('m/d/Y', strtotime('+' .
                                $data['validate_period'] . ' months', strtotime($data['wallet_expire_from']))) : '', ['disabled' =>
                                'disabled', 'placeholder' => 'Set from admin', 'class' => 'js-datepicker form-control']) !!}
                                {{-- @endif --}}
                        </div>
                    </div>
                </div>
                </div>

                <h1 style="font-size: 20px">Additional Images</h1>
                <div class="card py-3 m-b-30">
                    <div class="card-body">

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputEmail4">Select Images (for multiple select with CTRl)</label>
                                <input type="file" name="gallery[]" class="form-control" multiple="true">
                            </div>
                        </div>

                        @if (isset($images))
                            <div class="form-row">
                                @foreach ($images as $img)
                                    <div class="form-group col-md-2">
                                        <img src="{{ Asset('upload/user/gallery/' . $img->img) }}" width="50%"><br>
                                        <a href="{{ Asset(env('admin') . '/imageRemove/' . $img->id) }}"
                                            onclick="return confirm('Are you sure?')" style="color:Red">Remove</a>
                                    </div>
                                @endforeach
                            </div>
                        @endif

                    </div>
                </div>
                <h3 style="font-size: 20px;">Select Location From Google Map <small>(For search according location in app)</small></h3>
                <div class="card py-3 m-b-30">
                    <div class="card-body">

                        @include('admin.user.google')

                    </div>
                </div>
                </div>
                </div>
                <button type="submit" class="btn btn-success btn-cta">Save changes</button><br><br>
