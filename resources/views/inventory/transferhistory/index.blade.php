@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Transfer History</h5>
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
                                @foreach ($request_infos as $key => $request_info)
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
