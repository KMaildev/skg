@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="row invoice-preview">
            <div class="col-xl-12 col-md-12 mb-md-0">
                @foreach ($eng_request_items as $key => $request_info)
                    <div class="card invoice-preview-card m-2">
                        <div class="card-body">
                            <div
                                class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                                <div>
                                    <h4>Request code #{{ $request_info->code }}</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Request Date:</span>
                                        <span class="fw-semibold">{{ $request_info->date }}</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Project Code:</span>
                                        <span class="fw-semibold">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                        </span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Site Location:</span>
                                        <span class="fw-semibold">
                                            {{ $request_info->customer_table->site_location ?? '' }}
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="my-0" />
                        <div class="table-responsive">
                            <form autocomplete="off" action="{{ route('variable_logistics_team_check.store') }}"
                                method="POST" id="create-form">
                                @csrf
                                <input type="hidden" value="{{ $request_info->id }}" name="variable_request_info_id"
                                    required>

                                <table class="table table-bordered" style="margin-bottom: 0px !important;">
                                    <thead class="tbbg">
                                        <tr>
                                            <th style="color: white; text-align: center; width: 1%;">#</th>
                                            <th style="color: white; text-align: center; width: 20%;">Request Items</th>
                                            <th style="color: white; text-align: center; width: 20%;">Request Qty</th>
                                            <th style="color: white; text-align: center; width: 20%;">Passed (Qty)</th>
                                            <th style="color: white; text-align: center; width: 20%;">Price</th>
                                            <th style="color: white; text-align: center; width: 20%;">Total Amt</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $qs_passed_qty_total = 0;
                                        @endphp
                                        @foreach ($request_info->variable_request_items_table as $key => $item)
                                            <input type="hidden" value="{{ $item->id }}"
                                                name="variable_request_item_id[]">
                                            <tr>
                                                <td>
                                                    {{ $key + 1 }}
                                                </td>

                                                <td>
                                                    <input type="hidden"
                                                        value="{{ $item->variable_assets_table->id ?? 0 }}"
                                                        name="variable_asset_id[]">
                                                    {{ $item->variable_assets_table->item_name ?? '' }}
                                                </td>

                                                <td style="text-align: center">
                                                    {{ $item->quantity }}
                                                    <input type="hidden" value="{{ $item->quantity }}"
                                                        style="text-align:right;" name="eng_request_qty[]">
                                                </td>

                                                <td style="text-align: center">
                                                    @php
                                                        $qs_passed_qty = 0;
                                                    @endphp
                                                    @foreach ($item->variable_qs_team_checks_table as $qs_check)
                                                        @php
                                                            $qs_passed_qty += (float) $qs_check->qs_passed_qty;
                                                            $qs_passed_qty_total += (float) $qs_check->qs_passed_qty;
                                                        @endphp
                                                    @endforeach
                                                    {{ $qs_passed_qty }}

                                                    <input type="hidden" value="{{ $qs_passed_qty }}"
                                                        style="text-align:right;" name="passed_qty[]">
                                                </td>

                                                <td style="text-align: center;">
                                                    <input type="text" value="0" style="text-align:right;" name="price[]"
                                                        onkeyup="setCalcTotalAmount_{{ $key + 1 }}()"
                                                        id="price_{{ $key + 1 }}">
                                                </td>

                                                {{-- Total Amt --}}
                                                <td style="text-align: center;">
                                                    <span id="TotalAmount_{{ $key + 1 }}">0</span>
                                                </td>
                                            </tr>

                                            <script>
                                                function setCalcTotalAmount_{{ $key + 1 }}() {
                                                    var price = parseFloat(document.getElementById("price_" + {{ $key + 1 }}).value);
                                                    var totalAmt = {{ $qs_passed_qty }} * price;
                                                    document.getElementById("TotalAmount_" + {{ $key + 1 }}).innerHTML = (totalAmt).toLocaleString('en');
                                                }
                                            </script>
                                        @endforeach
                                    </tbody>
                                    <tr>
                                        <th colspan="2">Total</th>
                                        <th style="text-align: center; font-weight: bold">
                                            {{ $request_info->variable_request_items_table->sum('quantity') }}
                                        </th>
                                        <th style="text-align: center; font-weight: bold">
                                            {{ $qs_passed_qty_total }}
                                        </th>
                                        <th></th>
                                        <th style="text-align: center">
                                            <span id="AmountTotal"></span>
                                        </th>
                                    </tr>
                                </table>

                                <div class="row py-5">
                                    <div class="col-md-8 col-lg-8">
                                    </div>
                                    <div class="col-md-4 col-lg-4">

                                        <div class="row">
                                            <label class="col-sm-3 col-form-label">
                                                Transportation
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" style="text-align:right; width: 90%"
                                                    name="transportation" value="0">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <label class="col-sm-3 col-form-label">
                                                Labor
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" style="text-align:right; width: 90%" name="labor"
                                                    value="0">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <label class="col-sm-3 col-form-label">
                                                Banking %
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" style="text-align:right; width: 90%"
                                                    name="banking_percent" value="0">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <label class="col-sm-3 col-form-label">
                                                Extra
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" style="text-align:right; width: 90%" name="extra"
                                                    value="0">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-3 col-form-label"></div>
                                            <div class="col-sm-9 clearfix">
                                                <input type="submit" class="btn btn-success float-right" value="Save">
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreVariableLogisticsTeamCheck', '#create-form') !!}
@endsection
