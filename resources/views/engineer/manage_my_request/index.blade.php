@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Fixed Assets Request</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')
                        </div>
                    </div>
                </div>

                <div class="col-md">
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; text-align: center; width: 1%">#</th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Request code
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
                                        Logistics Team Check & Sent
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
                                        Action
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
                                            {{ $request_info->request_code }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_info->request_date }}
                                        </td>

                                        {{-- Accept / Reject --}}
                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.engineer.accept_reject_status',
                                                ['request_info' => $request_info]
                                            )
                                        </td>

                                        {{-- QS Team Check & Pass --}}
                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.engineer.qs_team_check_pass_status',
                                                ['request_info' => $request_info]
                                            )
                                        </td>

                                        {{-- Logistics Team Check & Sent --}}
                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.engineer.logistics_team_check_sent_status',
                                                [
                                                    'request_info' => $request_info,
                                                ]
                                            )
                                        </td>

                                        <td style="text-align: center">
                                            @if ($request_info->transfer_from_status == 'warehouse')
                                                {{ $request_info->main_warehouse_table->warehouse_code ?? 'Warehouse' }}
                                            @elseif ($request_info->transfer_from_status == 'other_site')
                                                {{ $request_info->request_infos_table->customer_table->project_code ?? '' }}
                                            @endif
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.engineer.received_by_engineer_status',
                                                [
                                                    'request_info' => $request_info,
                                                ]
                                            )
                                        </td>

                                        <td style="text-align: center;">
                                            <div class="btn-group">
                                                <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    Action
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('manage_my_request.show', $request_info->id) }}">
                                                            Item Detail
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection