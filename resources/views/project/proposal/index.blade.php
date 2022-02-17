@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Proposal</h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="{{ route('proposal.index') }}" method="GET" autocomplete="off">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>

                            @include('layouts.includes.export')

                            <a href="{{ route('project.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center; width: 20%;">Customer <br> Name</th>
                                <th style="color: white; text-align: center; width: 17%;">Floor <br> Plan</th>
                                <th style="color: white; text-align: center; width: 10%;">Quotation Proposal</th>
                                <th style="color: white; text-align: center; width: 16%;">Exterior Design Fees</th>
                                <th style="color: white; text-align: center; width: 16%;">Structure Design Fees</th>
                                <th style="color: white; text-align: center; width: 16%;">Archi Exterior Design</th>
                                <th style="color: white; text-align: center; width: 16%;">Structure Design</th>
                                <th style="color: white; text-align: center; width: 16%;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($projects as $key => $project)
                                <tr>
                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $key + 1 }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $project->customer_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px;">
                                        @php
                                            $endDate = now()->shortRelativeDiffForHumans($project->updated_at, null, false);
                                            $ednDateArr = explode(' ', $endDate);
                                            if ($ednDateArr[1] == 'after') {
                                                echo '<li class="d-flex mb-2">
                                                        <div class="avatar avatar-sm flex-shrink-0 me-3">
                                                            <span class="avatar-initial rounded-circle bg-label-danger">
                                                                <i class="bx bx-x"></i>
                                                            </span>
                                                        </div>
                                                        <div class="d-flex flex-column w-100">
                                                            <div class="d-flex justify-content-between mb-1">
                                                                <span>Expired</span>
                                                                <span class="text-muted">'.$ednDateArr[0].'</span>
                                                            </div>
                                                            <div class="progress" style="height:6px;">
                                                                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                                                                    aria-valuemin="100" aria-valuemax="100"></div>
                                                            </div>
                                                            <div class="d-flex justify-content-end mb-1">
                                                                <span>
                                                                    <a href="">
                                                                        Upload
                                                                        <i class="bx bx-upload"></i>
                                                                    </a>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </li>';
                                            }elseif ($ednDateArr[1] == 'before') {
                                                echo '<li class="d-flex mb-2">
                                                    <div class="avatar avatar-sm flex-shrink-0 me-3">
                                                        <span class="avatar-initial rounded-circle bg-label-primary"><i
                                                                class="bx bx-play"></i></span>
                                                    </div>
                                                    <div class="d-flex flex-column w-100">
                                                        <div class="d-flex justify-content-between mb-1">
                                                            <span>In Progress</span>
                                                            <span class="text-muted">'.$ednDateArr[0].'</span>
                                                        </div>
                                                        <div class="progress" style="height:6px;">
                                                            <div class="progress-bar bg-primary" style="width: 100%"
                                                                role="progressbar" aria-valuenow="100" aria-valuemin="100"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </li>';
                                            }
                                        @endphp
                                    </td>
                                    <td>
                                        <button type="button" class="btn rounded-pill btn-info btn-sm">Estimate</button>
                                    </td>


                                    <td style="text-align: center; font-size: 13px;">
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </td>


                                    <td style="text-align: center; font-size: 13px;">
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        
                                    </td>

                                    <td style="text-align: center; font-size: 13px;">
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </td>

                                    <td style="text-align: center; font-size: 13px;">
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
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
                                                        href="{{ route('unitsofmeasure.edit', $project->id) }}">Edit</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('unitsofmeasure.edit', $project->id) }}">Detail</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                        <caption class="ms-1">
                            {!! $projects->links() !!}
                        </caption>
                    </table>
                </div>

            </div>
        </div>
    </div>
@endsection
