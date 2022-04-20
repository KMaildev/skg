@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12 inner-wrapper">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Variable Assets Request
                        </h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="#" method="GET" autocomplete="off">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>
                            @include('layouts.includes.export')
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap table-scroll outer-wrapper">
                    <table class="table table-bordered">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%">#</th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Engineer Request
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Request code
                                </th>
                                <th style="color: white; text-align: center; padding-right: 50px; padding-left: 50px;">
                                    Request Items
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Request Date
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Accept / Reject
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    QS Team Check & Pass
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Logistics Team Check
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Management
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Logistics Team Send
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Transferred from
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Transferred to
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Received by Engineer
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Actual Voucher
                                </th>
                                <th style="color: white; text-align: center; width: 14%">
                                    Finance
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($eng_request_infos as $key => $request_info)
                                <tr>
                                    <td>
                                        {{ $key + 1 }}
                                    </td>

                                    <td style="text-align: center">
                                        {{ $request_info->user_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center">
                                        {{ $request_info->code }}
                                    </td>

                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <th> Items </th>
                                                <th> Size </th>
                                                <th> Unit </th>
                                                <th> Qty </th>
                                            </tr>
                                            @foreach ($request_info->variable_request_items_table as $value)
                                                <tr>
                                                    <td style="text-align: left;">
                                                        {{ $value->variable_assets_table->item_name }}
                                                    </td>
                                                    <td style="text-align: center;">
                                                        {{ $value->size }}
                                                    </td>
                                                    <td style="text-align: center;">
                                                        {{ $value->variable_assets_table->unit }}
                                                    </td>
                                                    <td style="text-align: center;">
                                                        {{ $value->quantity }}
                                                    </td>
                                                </tr>
                                            @endforeach
                                            <tr style="font-weight: bold">
                                                <td colspan="3">Total:</td>
                                                <td style="text-align: center; font-weight: bold">
                                                    {{ number_format($request_info->variable_request_items_table->sum('quantity')) }}
                                                </td>
                                            </tr>
                                        </table>
                                    </td>

                                    <td style="text-align: center">
                                        {{ $request_info->date }}
                                    </td>

                                    {{-- Accept / Reject --}}
                                    <td style="text-align: center">
                                        @include(
                                            'shared.variable_assets_request.manager.accept_reject_status',
                                            ['request_info' => $request_info]
                                        )
                                    </td>

                                    {{-- QS Team Check & Pass --}}
                                    <td style="text-align: center">
                                        @include(
                                            'shared.variable_assets_request.manager.qs_team_check_pass_status',
                                            ['request_info' => $request_info]
                                        )
                                    </td>

                                    {{-- Logistics Team Check --}}
                                    <td style="text-align: center">
                                        @include(
                                            'shared.variable_assets_request.manager.logistics_team_check_status',
                                            [
                                                'request_info' => $request_info,
                                            ]
                                        )
                                    </td>

                                    {{-- Management --}}
                                    <td style="text-align: center">
                                        @include(
                                            'shared.variable_assets_request.manager.management_accept_reject_status',
                                            [
                                                'request_info' => $request_info,
                                            ]
                                        )
                                    </td>

                                    {{-- Logistics Team Send --}}
                                    <td>
                                        @include(
                                            'shared.variable_assets_request.manager.logistics_team_send_status',
                                            [
                                                'request_info' => $request_info,
                                            ]
                                        )
                                    </td>

                                    {{-- Transferred from --}}
                                    <td>
                                        {{ $request_info->variable_logistics_team_sends_table->main_warehouses_table->warehouse_code ?? '' }}
                                    </td>

                                    {{-- Transferred to --}}
                                    <td>
                                        {{ $request_info->variable_logistics_team_sends_table->transfer_to ?? '' }}
                                    </td>

                                    <!-- Received by Engineer -->
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.variable_assets_request.manager.received_by_engineer_status',
                                            [
                                                'request_info' => $request_info,
                                            ]
                                        )
                                    </td>

                                    {{-- Actual Voucher --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.variable_assets_request.manager.variable_actual_voucher',
                                            ['request_info' => $request_info]
                                        )
                                    </td>


                                    {{-- Finance --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.variable_assets_request.manager.variable_finance_payment_slip',
                                            [
                                                'request_info' => $request_info,
                                            ]
                                        )
                                    </td>



                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="pseduo-track"></div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection
