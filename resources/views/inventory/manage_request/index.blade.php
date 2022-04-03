@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Manage Request</h5>
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

                <div class="col-md">
                    <div class="table-responsive text-nowrap">
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
                                            {{ $request_info->request_code }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_info->request_date }}
                                        </td>

                                        {{-- Accept / Reject --}}
                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.accept_reject_status',
                                                ['request_info' => $request_info]
                                            )
                                        </td>

                                        {{-- QS Team Check & Pass --}}
                                        <td style="text-align: center">
                                            @include(
                                                'shared.managerequest.qs_team_check_pass_status',
                                                ['request_info' => $request_info]
                                            )
                                        </td>

                                        <td style="text-align: center">
                                            Warehouse
                                        </td>

                                        <td style="text-align: center">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                        </td>

                                        <td style="text-align: center">
                                            Yes
                                        </td>

                                        <td style="text-align: center">
                                            Recevied
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
                                                            href="{{ route('managerequest.show', $request_info->id) }}">
                                                            Items Detail
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
