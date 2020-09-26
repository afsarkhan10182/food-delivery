<p align="center" style="font-size: 20px">Report Between {{ $from }} To {{ $to }}</p>

<table width="100%" cellspacing="0" cellpadding="0" border="1">

    <tr>
        <td>&nbsp;<b>Order ID</b></td>
        <td>&nbsp;<b>Order Date</b></td>
        <td>&nbsp;<b>User</b></td>
        <td>&nbsp;<b>Store</b></td>
        <td>&nbsp;<b>Total Amount</b></td>
        <td>&nbsp;<b>Commission</b></td>
        @if($subadmin_data)
        <td>&nbsp;<b>Subadmin Name</b></td>
        <td>&nbsp;<b>Collected Amount</b></td>
        <td>&nbsp;<b>Activated Date</b></td>
        @endif
    </tr>

    @php($total = [])
        @php($com = [])
            @foreach ($data as $row)
                @php($total[] = $row['amount'])
                    @php($com[] = $user->getComPerOrder($row['id'], $row['amount']))
                        <tr>
                            <td width="5%">&nbsp;#{{ $row['id'] }}</td>
                            <td width="10%">&nbsp;{{ $row['date'] }}</td>
                            <td width="10%">&nbsp;{{ $row['user'] }}</td>
                            <td width="15%">&nbsp;{{ $row['store'] }}</td>
                            <td width="10%">&nbsp;{{ $row['amount'] }}</td>
                            <td width="7%">&nbsp;{{ $user->getComPerOrder($row['id'], $row['amount']) }}</td>
                            @if($subadmin_data)
                            <td width="12%">&nbsp;{{ $row['subadmin_id'] ? $subadmin->getSubAdminName($row['subadmin_id']) : '' }}</td>
                            <td width="7%">&nbsp;{{ $row['collected_amount'] }}</td>
                            <td width="10%">&nbsp;{{ $row['activated_date'] }}</td>
                            @endif
                        </tr>

                    @endforeach

                    <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="10%">&nbsp;<b>Total Orders</b></td>
                        <td width="10%">&nbsp;<b>{{ count($total) }}</b></td>
                        <td width="15%">&nbsp;<b>Total</b></td>
                        <td width="10%">&nbsp;<b>{{ array_sum($total) }}</b></td>
                        <td width="7%">&nbsp;<b>{{ array_sum($com) }}</b></td>
                        @if($subadmin_data)
                        <td width="12%">&nbsp;<b></b></td>
                        <td width="7%">&nbsp;<b></b></td>
                        <td width="10%">&nbsp;<b></b></td>
                        @endif
                    </tr>

                </table>
