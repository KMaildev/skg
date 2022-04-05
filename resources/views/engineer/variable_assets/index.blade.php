@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Variable Assets</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')

                            <a href="{{ route('engineer_variable_assets.create') }}"
                                class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>

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
                                        code
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Date
                                    </th>
                                    <th style="color: white; text-align: center; width: 14%">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($variable_asset_infos as $key => $variable_info)
                                    <tr>
                                        <td>
                                            {{ $key + 1 }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $variable_info->code }}
                                        </td>

                                        <td style="text-align: center">
                                            {{ $variable_info->date }}
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
                                                            href="#">
                                                            View Item Detail
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
