@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Engineer Return</h5>
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
                                        Return Code
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Return Date
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Return From
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        QS Team Check & Pass
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Logistics Team Check & Sent
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Received by Store Manager
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($returns as $key => $return)
                                    <tr>

                                        <td>
                                            {{ $key + 1 }}
                                        </td>
                                        <td>
                                            {{ $return->return_code }}
                                        </td>

                                        <td>
                                            {{ $return->return_date }}
                                        </td>

                                        <td>
                                            {{ $return->customer_table->project_code ?? '' }}
                                        </td>

                                        <td>
                                            @include(
                                                'shared.engineer_return.qs_team_check_pass_status',
                                                ['engineer_return_infos' => $return]
                                            )
                                        </td>

                                        <td>
                                            NULL
                                        </td>

                                        <td>
                                            NUll
                                        </td>

                                        <td>
                                            Coming soon
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
