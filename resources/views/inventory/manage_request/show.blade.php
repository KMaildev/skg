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
                                    <h4>Request code #{{ $request_info->request_code }}</h4>
                                    <div class="mb-2">
                                        <span class="me-1">Request Date:</span>
                                        <span class="fw-semibold">{{ $request_info->request_date }}</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Work Scope:</span>
                                        <span class="fw-semibold">{{ $request_info->work_scope }}</span>
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
                                <div class="mb-xl-0 mb-4">
                                    <h4>Status</h4>
                                    <div class="mb-2">
                                        <span class="me-1">QS Department:</span>
                                        <span class="fw-semibold" style="color: red">Under construction</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Ready to Dispatch:</span>
                                        <span class="fw-semibold" style="color: red;">Under construction</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Dispatch to Site:</span>
                                        <span class="fw-semibold" style="color: red">Under construction</span>
                                    </div>
                                    <div class="mb-2">
                                        <span class="me-1">Recevied by Engnieer:</span>
                                        <span class="fw-semibold" style="color: green;">Recevied</span>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <hr class="my-0" />
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center; width: 1%;">#</th>
                                        <th style="color: white; text-align: center; width: 20%;">Item</th>
                                        <th style="color: white; text-align: center; width: 20%;">Quantity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($request_info->eng_request_items_table as $key => $item)
                                        <tr>
                                            <td>
                                                {{ $key + 1 }}
                                            </td>
                                            <td>
                                                {{ $item->fixed_assets_table->item_name ?? '' }}
                                            </td>
                                            <td style="text-align: center">
                                                {{ $item->quantity }}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tr>
                                    <th colspan="2">Total</th>
                                    <th style="text-align: center; font-weight: bold">
                                        {{ $request_info->eng_request_items_table->sum('quantity') }}
                                    </th>
                                </tr>
                            </table>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

    </div>
@endsection
