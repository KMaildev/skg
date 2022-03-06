@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Proposal</h5>
                        <i class="bx bx-book"></i>
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
                                <th style="color: white; text-align: center; width: 20%;">Customer Name</th>
                                <th style="color: white; text-align: center; width: 20%;">Project Code</th>
                                <th style="color: white; text-align: center; width: 20%;">Date</th>
                                <th style="color: white; text-align: center; width: 17%;">Floor Plan</th>
                                <th style="color: white; text-align: center; width: 10%;">Quotation Proposal</th>
                                <th style="color: white; text-align: center; width: 16%;">Exterior Design Fees</th>
                                <th style="color: white; text-align: center; width: 16%;">Structure Design Fees</th>
                                <th style="color: white; text-align: center; width: 16%;">Approved By</th>
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
                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $project->customer_table->project_code ?? '' }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $project->created_at }}
                                    </td>

                                    {{-- FloorPlan --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.floor_plan_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- Quotation Proposal --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.quotation_proposal_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- Exterior Design Fees --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.exterior_design_fees_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- Structure Design Fees --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.structure_design_fees_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- FloorPlan --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.approved_by',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- Archi Exterior Design --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.archi_exterior_design_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- Structure Design --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.structure_design_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    <td style="text-align: center;">
                                        <div class="btn-group">
                                            <button class="btn btn-info btn-sm dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">

                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('project.edit', $project->id) }}">Remark</a>
                                                </li>

                                                <li>
                                                    <a class="dropdown-item" href="{{ route('project.show', $project->id) }}">Detail</a>
                                                </li>

                                                <li>
                                                    <a class="dropdown-item" href="#">Contract</a>
                                                </li>

                                                <li>
                                                    <a class="dropdown-item" href="#">Completed</a>
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
