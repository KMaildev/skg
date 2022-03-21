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
                        <table class="table">
                            <thead class="tbbg">
                                <tr>
                                    <th style="color: white; text-align: center; width: 1%">#</th>
                                    <th style="color: white; text-align: center; width: 14%">Request code</th>
                                    <th style="color: white; text-align: center; width: 14%">Request Date</th>
                                    <th style="color: white; text-align: center; width: 5%">Procurement Check </th>
                                    <th style="color: white; text-align: center; width: 14%">Transferred</th>
                                    <th style="color: white; text-align: center; width: 14%">From</th>
                                    <th style="color: white; text-align: center; width: 14%">To</th>
                                    <th style="color: white; text-align: center; width: 14%">Sent by Store or Engineer
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">Approved by Management</th>
                                    <th style="color: white; text-align: center; width: 14%">Received by Engineer</th>
                                    <th style="color: white; text-align: center; width: 14%">Action</th>
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
                                        <td style="text-align: center">
                                            Yes
                                        </td>
                                        <td style="text-align: center">
                                            Warehouse
                                        </td>
                                        <td style="text-align: center">
                                            Warehouse
                                        </td>
                                        <td style="text-align: center">
                                            {{ $request_info->customer_table->project_code ?? '' }}
                                        </td>
                                        <td style="text-align: center">
                                            Null
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
