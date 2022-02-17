@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Warehouse Plan</h5>
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

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center; width: 20%;">Project Code</th>
                                <th style="color: white; text-align: center; width: 20%;">Customer Name</th>
                                <th style="color: white; text-align: center; width: 20%;">Location</th>
                                <th style="color: white; text-align: center; width: 17%;">Construction Type</th>
                                <th style="color: white; text-align: center; width: 17%;">Work Scope</th>
                                <th style="color: white; text-align: center; width: 10%;">Item Name & Quantity</th>
                                <th style="color: white; text-align: center; width: 10%;">Buy/ Procurement</th>
                                <th style="color: white; text-align: center; width: 10%;">Procurement Status</th>
                                <th style="color: white; text-align: center; width: 10%;">Transfer in to VR Warehouse</th>
                                <th style="color: white; text-align: center; width: 16%;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">

                            <tr>
                                <td>1</td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    SKG-220101
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    Ko Moe Aung Win WIn
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    Nyaung Shwe Township
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    1.5 Storeyed Residence Building.
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    Ground Floor
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <a href="" class="btn rounded-pill btn-info btn-sm">Detail</a>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <a href="" class="btn btn-danger btn-xs">Status</a>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <span class="badge badge-center bg-success"><i class="bx bx-check"></i></span>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <button type="button" class="btn btn-success btn-xs">
                                        <span class="tf-icons bx bx-check"></span>&nbsp; Done
                                    </button>
                                </td>

                                <td style="text-align: center;">
                                    <div class="btn-group">
                                        <button class="btn btn-info btn-sm dropdown-toggle" type="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">

                                            <li>
                                                <a class="dropdown-item" href="#">Detail</a>
                                            </li>

                                            <li>
                                                <a class="dropdown-item"
                                                    href="{{ route('engineeringrequest.index') }}">Engineer Request </a>
                                            </li>

                                        </ul>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>2</td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    SKG-220102
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    Daw Mya Mya Thwe
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    Dagon Township
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    2 Storeyed Residence Building.
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    First Floor
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <a href="" class="btn rounded-pill btn-info btn-sm">Detail</a>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <a href="" class="btn btn-danger btn-xs">Status</a>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <span class="badge badge-center bg-danger"><i class="bx bx-x"></i></span>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <button type="button" class="btn btn-danger btn-xs">
                                        <span class="tf-icons bx bx-x"></span>&nbsp; Ready
                                    </button>
                                </td>

                                <td style="text-align: center;">
                                    <div class="btn-group">
                                        <button class="btn btn-info btn-sm dropdown-toggle" type="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">

                                            <li>
                                                <a class="dropdown-item" href="#">Detail</a>
                                            </li>

                                            <li>
                                                <a class="dropdown-item"
                                                    href="{{ route('engineeringrequest.index') }}">Engineer Request </a>
                                            </li>

                                        </ul>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>3</td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    SKG-220103
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    Aung Aung
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    North Dagon Township
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    3 Storeyed Residence Building.
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    Second Floor
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <a href="" class="btn rounded-pill btn-info btn-sm">Detail</a>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <a href="" class="btn btn-danger btn-xs">Status</a>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <span class="badge badge-center bg-success"><i class="bx bx-check"></i></span>
                                </td>

                                <td style="text-align: center; font-size: 13px; font-weight: bold;">
                                    <button type="button" class="btn btn-success btn-xs">
                                        <span class="tf-icons bx bx-check"></span>&nbsp; Done
                                    </button>
                                </td>

                                <td style="text-align: center;">
                                    <div class="btn-group">
                                        <button class="btn btn-info btn-sm dropdown-toggle" type="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">

                                            <li>
                                                <a class="dropdown-item" href="#">Detail</a>
                                            </li>

                                            <li>
                                                <a class="dropdown-item"
                                                    href="{{ route('engineeringrequest.index') }}">Engineer Request </a>
                                            </li>

                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
@endsection
