@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Sites</h5>
                    </div>
                </div>
                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Customer</th>
                                <th style="color: white; text-align: center;">Phone</th>
                                <th style="color: white; text-align: center;">Project Code</th>
                                <th style="color: white; text-align: center;">Site Location</th>
                                <th style="color: white; text-align: center;">Building Area</th>
                                <th style="color: white; text-align: center;">Construction Type</th>
                                <th style="color: white; text-align: center;">Job Scope</th>
                                <th style="color: white; text-align: center;">Storeyed</th>
                                <th style="color: white; text-align: center;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($projects_users as $key => $value)
                                @foreach ($value->projects as $project)
                                    <tr>
                                        <td style="text-align: center;">
                                            {{ $key + 1 }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->name ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->phone ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->project_code ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->site_location ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->building_area ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->construction_type ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->job_scope ?? '' }}
                                        </td>

                                        <td style="text-align: center;">
                                            {{ $project->customer_table->storeyed ?? '' }}
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
                                                            href="{{ route('engrequest_create', $project->id) }}">Request</a>
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('engrequest.show', $project->id) }}">Request
                                                            Lists</a>
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item" href="">Site Detail</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
