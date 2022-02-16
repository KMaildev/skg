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
                                <th style="color: white; text-align: center;">Customer Name</th>
                                <th style="color: white; text-align: center;">Floor Plan</th>
                                <th style="color: white; text-align: center;">Quotation Proposal</th>
                                <th style="color: white; text-align: center;">Exterior Design Fees</th>
                                <th style="color: white; text-align: center;">Structure Design Fees</th>
                                <th style="color: white; text-align: center;">Archi Exterior Design</th>
                                <th style="color: white; text-align: center;">Structure Design</th>
                                <th style="color: white; text-align: center;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($projects as $key => $project)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $project->customer_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{-- {{ now()->toDateTimeString() }} --}}
                                        {{ \Carbon\Carbon::parse($project->created_at)->diffForHumans() }}

                                    </td>

                                    <td>
                                        {{-- {{ \Carbon\Carbon::parse($project->created_at)->addDays(+2) }} --}}
                                    </td>

                                    <td>
                                        {{-- {{ \Carbon\Carbon::parse()->isAfter('2022-02-17 01:00:00') }} --}}


                                        {{ \Carbon\Carbon::now()->addDays(+2)->diffInDays($project->created_at) }}

                                        
                                    </td>


                                    <td style="text-align: center;">
                                        {{ $project->customer_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $project->customer_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $project->customer_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $project->customer_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $project->customer_table->name ?? '' }}
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
