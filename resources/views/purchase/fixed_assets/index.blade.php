@extends('layouts.menus.purchase')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Fixed Assets Purchase</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')

                            <a href="{{ route('fixed_assets_purchase.create') }}"
                                class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>


                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Item Name</th>
                                <th style="color: white; text-align: center;">Unit</th>
                                <th style="color: white; text-align: center;">Qty</th>
                                <th style="color: white; text-align: center;">Remark</th>
                                <th style="color: white; text-align: center;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">

                        </tbody>
                        <tr>
                            <th colspan="3">Total</th>
                            <th style="text-align: center; font-weight: bold">
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
