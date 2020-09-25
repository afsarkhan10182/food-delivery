<p align="center" style="font-size: 20px">Report Between {{ $from }} To {{ $to }}</p>
<style>
    .row {
    display: flex;
    margin-right: -15px;
    margin-left: 0px;
    flex-wrap: wrap;
}
    .col-md-6 {
    max-width: 50%;
    flex: 0 0 50%;
}
    .col-md-3 {
    max-width: 25%;
    flex: 0 0 25%;
}
</style>
<table width="100%" cellspacing="0" cellpadding="0" border="1">

    <tr>
        <td>&nbsp;<b>Order ID</b></td>
        <td>&nbsp;<b>Order Date</b></td>
        <td>&nbsp;<b>User</b></td>
        <td>&nbsp;<b>Store</b></td>
        <td>&nbsp;<b>Delivery Boy</b></td>
        <td>&nbsp;<b>Item Details</b></td>
        <td>&nbsp;<b>Total Amount</b></td>
        <td>&nbsp;<b>Commission</b></td>
        <td>&nbsp;<b>Remaining Credit Balance</b></td>
    </tr>

    @php($total = [])
        @php($com = [])
            @php($remainingBalance = [])
                @foreach ($data as $row)
                    @php($total[] = $row['amount'])
                        @php($com[] = $user->getComPerOrder($row['id'], $row['amount']))
                            <tr>
                                <td width="5%">&nbsp;#{{ $row['id'] }}</td>
                                <td width="10%">&nbsp;{{ $row['date'] }}</td>
                                <td width="10%">&nbsp;{{ $row['user'] }}</td>
                                <td width="10%">&nbsp;{{ $row['store'] }}</td>
                                <td width="5%">&nbsp;{{ $delivery->deliveryName($row['d_boy']) }}</td>
                                <td width="25%">

                                    <div class="row">
                                        <div class="col-md-6"><b>Item</b></div>
                                        <div class="col-md-3"><b>Qty</b></div>
                                        <div class="col-md-3"><b>Price</b></div>
                                    </div>
                                    <hr>

                                    @foreach ($item->getItem($row['id']) as $i)

                                        <div class="row" style="font-size: 12px">
                                            <div class="col-md-6">{{ $i['type'] . ' - ' . $i['item'] }}</div>
                                            <div class="col-md-3">{{ $i['qty'] }}</div>
                                            <div class="col-md-3">{{ $currency . $i['price'] }}</div>
                                        </div>
                                        <hr>

                                        @if (count($item->getAddon($i['id'], $row['id'])) > 0)

                                            @foreach ($item->getAddon($i['id'], $row['id']) as $add)

                                                <div class="row" style="font-size: 12px">
                                                    <div class="col-md-6">{{ $add->addon }}</div>
                                                    <div class="col-md-3">{{ $add->qty }}</div>
                                                    <div class="col-md-3">{{ $currency . $add->price }}</div>
                                                </div>
                                                <hr>



                                            @endforeach

                                        @endif

                                    @endforeach


                                    <div class="row" style="font-size: 12px;color:red">
                                        <div class="col-md-6">Delivery Charges : {{ $currency . $row['d_charges'] }}</div>
                                        @if ($row['discount'])
                                        <div class="col-md-3">Discount : {{ $currency . $row['discount'] }}</div>
                                        @endif
                                    </div>
                                    <hr>

                                    @if ($row['notes'])
                                        <small style="color:blue">Notes : {{ $row['notes'] }}</small>
                                    @endif

                                </td>
                                <td width="5%">&nbsp;{{ $row['amount'] }}</td>
                                <td width="10%">&nbsp;{{ $user->getComPerOrder($row['id'], $row['amount']) }}</td>
                                <td width="15%">&nbsp;{{ $user->balanceAmount($row['amount'], $row['id']) }}</td>
                            </tr>

                        @endforeach

                        <tr>
                            <td width="5%">&nbsp;</td>
                            <td width="10%">&nbsp;<b>Total Orders</b></td>
                            <td width="17%">&nbsp;<b>{{ count($total) }}</b></td>
                            <td width="17%">&nbsp;<b>Total</b></td>
                            <td width="5%">&nbsp;</td>
                            <td width="5%">&nbsp;</td>
                            <td width="17%">&nbsp;<b>{{ array_sum($total) }}</b></td>
                            <td width="10%">&nbsp;<b>{{ array_sum($com) }}</b></td>
                            <td width="15%">&nbsp;<b>{{ $user->userTotalbalanceAmount(Auth::user()->id) }}</b></td>
                        </tr>

                    </table>
