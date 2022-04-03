@extends('layouts.menus.project')
@section('content')
    <style>
        tr:nth-child(even) th[scope=row] {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) th[scope=row] {
            background-color: #fff;
        }

        tr:nth-child(even) {
            background-color: rgba(0, 0, 0, 0.05);
        }

        tr:nth-child(odd) {
            background-color: rgba(255, 255, 255, 0.05);
        }

        .colheaders td:nth-of-type(2) {
            font-style: italic;
        }

        .colheaders th:nth-of-type(3),
        .colheaders td:nth-of-type(3) {
            text-align: right;
        }

        .rowheaders td:nth-of-type(1) {
            font-style: italic;
        }

        .rowheaders th:nth-of-type(3),
        .rowheaders td:nth-of-type(2) {
            text-align: right;
        }

        /* Fixed Headers */

        th {
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 2;
        }

        th[scope=row] {
            position: -webkit-sticky;
            position: sticky;
            left: 0;
            z-index: 1;
        }

        th[scope=row] {
            /* vertical-align: top; */
            color: inherit;
            background-color: inherit;
            background: linear-gradient(90deg, transparent 0%, transparent calc(100% - .05em), #d6d6d6 calc(100% - .05em), #d6d6d6 100%);
        }

        th:not([scope=row]):first-child {
            left: 0;
            z-index: 3;
            /* background: linear-gradient(90deg, #666 0%, #666 calc(100% - .05em), #ccc calc(100% - .05em), #ccc 100%); */
        }

        /* Scrolling wrapper */

        div[tabindex="0"][aria-labelledby][role="region"] {
            overflow: auto;
        }

        div[tabindex="0"][aria-labelledby][role="region"]:focus {
            box-shadow: 0 0 .5em rgba(0, 0, 0, .5);
            outline: .1em solid rgba(0, 0, 0, .1);
        }

        div[tabindex="0"][aria-labelledby][role="region"] table {
            margin: 0;
        }

        div[tabindex="0"][aria-labelledby][role="region"].rowheaders {
            background:
                linear-gradient(to right, transparent 30%, rgba(255, 255, 255, 0)),
                linear-gradient(to right, rgba(255, 255, 255, 0), white 70%) 0 100%,
                radial-gradient(farthest-side at 0% 50%, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0)),
                radial-gradient(farthest-side at 100% 50%, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0)) 0 100%;
            background-repeat: no-repeat;
            background-color: #fff;
            background-size: 4em 100%, 4em 100%, 1.4em 100%, 1.4em 100%;
            background-position: 0 0, 100%, 0 0, 100%;
            background-attachment: local, local, scroll, scroll;
        }

        div[tabindex="0"][aria-labelledby][role="region"].colheaders {
            background:
                linear-gradient(white 30%, rgba(255, 255, 255, 0)),
                linear-gradient(rgba(255, 255, 255, 0), white 70%) 0 100%,
                radial-gradient(farthest-side at 50% 0, rgba(0, 0, 0, .2), rgba(0, 0, 0, 0)),
                radial-gradient(farthest-side at 50% 100%, rgba(0, 0, 0, .2), rgba(0, 0, 0, 0)) 0 100%;
            background-repeat: no-repeat;
            background-color: #fff;
            background-size: 100% 4em, 100% 4em, 100% 1.4em, 100% 1.4em;
            background-attachment: local, local, scroll, scroll;
        }

        /* Strictly for making the scrolling happen. */

        th[scope=row] {
            min-width: 10%;
        }

        @media all and (min-width: 30em) {
            th[scope=row] {
                min-width: 10%;
            }
        }

        th[scope=row]+td {
            min-width: 10%;
        }

        div[tabindex="0"][aria-labelledby][role="region"]:nth-child(3) {
            max-height: 18em;
        }

        div[tabindex="0"][aria-labelledby][role="region"]:nth-child(7) {
            max-height: 15em;
            margin: 0 1em;
        }

        /* ========== */

        .intro {
            max-width: 100%;
            margin: 1em auto;
        }

        .table-scroll {
            position: relative;
            width: 100%;
            z-index: 1;
            margin: auto;
            overflow: auto;
            height: 700px;
        }

        .table-scroll table {
            width: 100%;
            min-width: 100%;
            margin: auto;
            border-collapse: separate;
            border-spacing: 0;
        }

        .table-wrap {
            position: relative;
        }

        .table-scroll th,
        .table-scroll td {
            padding: 8px 8px;
            border: 1.6px solid #bfbfbf;
            background: #fff;
        }

        .table-scroll thead th {
            background: #2e696e;
            color: #fff;
            position: -webkit-sticky;
            position: sticky;
            top: 0;
        }

        /* safari and ios need the tfoot itself to be position:sticky also */
        .table-scroll tfoot,
        .table-scroll tfoot th,
        .table-scroll tfoot td {
            position: -webkit-sticky;
            position: sticky;
            bottom: 0;
            background: #666;
            color: #fff;
            z-index: 4;
        }

        a:focus {
            background: red;
        }

        /* testing links*/

        th:first-child {
            position: -webkit-sticky;
            position: sticky;
            left: 0;
            z-index: 2;
            background: #ccc;
        }

        thead th:first-child,
        tfoot th:first-child {
            z-index: 5;
        }

    </style>
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <p style="color: red; font-size: 19px;">Maintenance in  Progress </p>
                        <h5 class="m-0 me-2">Proposal</h5>
                        <div class="card-title-elements ms-auto">
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


                <div class="table-responsive text-nowrap rowheaders table-scroll" role="region" aria-labelledby="HeadersCol"
                    tabindex="0">
                    <table class="table table-bordered main-table" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th
                                    style="color: white; text-align: center; width: 1%; background-color: #2e696e !important">
                                    #
                                </th>
                                <th style="color: white; text-align: center; width: 10%;">Customer Name</th>
                                <th
                                    style="color: white; text-align: center; width: 20%; background-color: #2e696e !important">
                                    Project Code</th>
                                <th style="color: white; text-align: center; width: 20%;">Date</th>
                                <th style="color: white; text-align: center; width: 20%;">Processing File</th>

                                @can('floor_plan_view')
                                    <th style="color: white; text-align: center; width: 17%;">Floor Plan</th>
                                @endcan

                                @can('quotation_proposal_view')
                                    <th style="color: white; text-align: center; width: 10%;">Quotation Proposal</th>
                                @endcan

                                @can('exterior_design_fees_view')
                                    <th style="color: white; text-align: center; width: 16%;">Exterior Design Fees</th>
                                @endcan

                                @can('structure_design_fees_view')
                                    <th style="color: white; text-align: center; width: 16%;">Structure Design Fees</th>
                                @endcan

                                <th style="color: white; text-align: center; width: 16%;">No Fees but Allowed</th>

                                @can('archi_exterior_design_view')
                                    <th style="color: white; text-align: center; width: 16%;">Archi Exterior Design</th>
                                @endcan

                                @can('structure_design_view')
                                    <th style="color: white; text-align: center; width: 16%;">Structure Design</th>
                                @endcan

                                <th style="color: white; text-align: center; width: 16%;">Permit</th>

                                <th style="color: white; text-align: center; width: 16%;">Contract</th>

                                @can('project_delete')
                                    <th style="color: white; text-align: center; width: 16%;">Actions</th>
                                @endcan
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0 row_position" id="tablecontents">

                            @foreach ($projects as $key => $project)
                                <tr class="row1" data-id="{{ $project->id }}">

                                    <td
                                        style="text-align: center; font-size: 13px; font-weight: bold; background-color: #f2f2f2;">
                                        {{ $key + 1 }}
                                    </td>

                                    <th style="text-align: center; font-size: 13px; font-weight: bold; background-color: #f2f2f2;"
                                        scope="row">
                                        {{ $project->customer_table->name ?? '' }}
                                    </th>

                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $project->customer_table->project_code ?? '' }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                        {{ $project->created_at }}
                                    </td>

                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.processing_file_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- FloorPlan --}}
                                    @can('floor_plan_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include(
                                                'shared.project_status.floor_plan_status',
                                                ['project' => $project]
                                            )
                                        </td>
                                    @endcan

                                    {{-- Quotation Proposal --}}
                                    @can('quotation_proposal_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include(
                                                'shared.project_status.quotation_proposal_status',
                                                ['project' => $project]
                                            )
                                        </td>
                                    @endcan

                                    {{-- Exterior Design Fees --}}
                                    @can('exterior_design_fees_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include(
                                                'shared.project_status.exterior_design_fees_status',
                                                ['project' => $project]
                                            )
                                        </td>
                                    @endcan

                                    {{-- Structure Design Fees --}}
                                    @can('structure_design_fees_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include(
                                                'shared.project_status.structure_design_fees_status',
                                                ['project' => $project]
                                            )
                                        </td>
                                    @endcan

                                    {{-- approved_by --}}
                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.approved_by',
                                            ['project' => $project]
                                        )
                                    </td>

                                    {{-- Archi Exterior Design --}}
                                    @can('archi_exterior_design_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include(
                                                'shared.project_status.archi_exterior_design_status',
                                                ['project' => $project]
                                            )
                                        </td>
                                    @endcan

                                    {{-- Structure Design --}}
                                    @can('structure_design_view')
                                        <td style="text-align: center; font-size: 13px;">
                                            @include(
                                                'shared.project_status.structure_design_status',
                                                ['project' => $project]
                                            )
                                        </td>
                                    @endcan


                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.permit_status',
                                            ['project' => $project]
                                        )
                                    </td>


                                    <td style="text-align: center; font-size: 13px;">
                                        @include(
                                            'shared.project_status.contract_status',
                                            ['project' => $project]
                                        )
                                    </td>

                                    @can('project_delete')
                                        <td style="text-align: center;">
                                            <div class="demo-inline-spacing">
                                                <div class="btn-group">
                                                    <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        Action
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item"
                                                                href="{{ route('project.edit', $project->id) }}">Remark</a>
                                                        </li>

                                                        <li>
                                                            <a class="dropdown-item"
                                                                href="{{ route('project.show', $project->id) }}">Detail</a>
                                                        </li>

                                                        <li>
                                                            <a class="dropdown-item" href="#">Completed</a>
                                                        </li>

                                                        <li>
                                                            <form action="{{ route('project.destroy', $project->id) }}"
                                                                method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="button" class="dropdown-item del_confirm"
                                                                    id="confirm-text" data-toggle="tooltip">Delete</button>
                                                            </form>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </td>
                                    @endcan
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
        $(function() {
            $("#tablecontents").sortable({
                delay: 150,
                items: "tr",
                cursor: 'move',
                opacity: 0.6,
                update: function() {
                    sendOrderToServer();
                }
            });

            function sendOrderToServer() {
                var order = [];
                var token = $('meta[name="csrf-token"]').attr('content');
                $('tr.row1').each(function(index, element) {
                    order.push({
                        id: $(this).attr('data-id'),
                        position: index + 1,
                    });
                });

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    // url: "{{ url('projectsortable') }}",
                    url: "/projectsortable",
                    data: {
                        order: order,
                        _token: token
                    },
                    success: function(response) {
                        if (response.status == "success") {
                            console.log(response);
                            alert(response);
                            alert("w");
                        } else {
                            console.log(response);
                            alert(response);
                            alert("E");
                        }
                    }
                });
            }
        });
    </script>
@endsection
