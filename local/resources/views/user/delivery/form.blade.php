<div class="form-row">

    <div class="form-group col-md-6">
        <label for="inputEmail6">Name</label>
        {!! Form::text('name', null, ['id' => 'code', 'class' => 'form-control', 'required' => 'required']) !!}
    </div>
    <div class="form-group col-md-6">
        <label for="asd">Address</label>
        {!! Form::text('address', null, ['placeholder' => 'Delivery Boy Address', 'class' => 'form-control']) !!}
    </div>
</div>
<div class="form-row">
    <div class="form-group col-md-6">
        <label for="inputEmail6">Start Time <i>(select 00 if always available)</i></label>
        <select name="start_time" class="form-control">
            <option>Select</option>
            @php($ot = 0)

                @while ($ot < 23)

                    @php($ot++)

                        <option value="{{ $ot . ':00' }}" @if ($data->start_time == $ot)
                            selected @endif>{{ $ot . ':00' }}</option>
                    <option value="{{ $ot . ':30' }}" @if ($data->start_time == $ot . ':30')
                        selected @endif> {{ $ot }}:30
                    </option>

                    @endwhile
                    <option value="00" @if ($data->start_time == '00') selected
                        @endif>00</option>
                </select>
            </div>

            <div class="form-group col-md-6">
                <label for="inputEmail6">End Time <i>(select 23:30 if always available)</i></label>
                <select name="end_time" class="form-control">
                    <option>Select</option>
                    @php($ct = 0)

                        @while ($ct < 23)

                            @php($ct++)

                                <option value="{{ $ct . ':00' }}" @if ($data->end_time == $ct)
                                    selected @endif>{{ $ct . ':00' }}</option>
                            <option value="{{ $ct . ':30' }}" @if ($data->end_time == $ct . ':30')
                                selected @endif>{{ $ct }}:30
                            </option>

                            @endwhile
                            <option value="00" @if ($data->end_time == '00') selected
                                @endif>00</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail6">Phone (This will be username)</label>
                        {!! Form::text('phone', null, ['id' => 'code', 'class' => 'form-control', 'required' => 'required']) !!}
                    </div>

                    <div class="form-group col-md-6">
                        @if ($data->id)
                            <label for="inputEmail6">Change Password</label>
                            <input type="password" name="password" class="form-control">
                        @else
                            <label for="inputEmail6">Password</label>
                            <input type="password" name="password" class="form-control" required="required">
                        @endif
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputEmail6">Status</label>
                        <select name="status" class="form-control">
                            <option value="0" @if ($data->status == 0) selected @endif
                                >Active</option>
                            <option value="1" @if ($data->status == 1) selected @endif
                                >Disabled</option>
                        </select>
                    </div>
                </div>

                @php($user_id = Auth::user()->id)
                    <input type="hidden" name="user_id" value="{{ $user_id }}">

                    <button type="submit" class="btn btn-success btn-cta">Save changes</button>
