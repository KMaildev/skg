@extends('layouts.main')
@section('content')

<div class="row justify-content-center py-5">
    <div class="col-md-8 col-sm-12 col-lg-8">

        <div class="row">
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <a href="{{ route('accountingdashboard.index') }}">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="avatar avatar-md mx-auto mb-3">
                                <span class="avatar-initial rounded-circle bg-label-info">
                                    <i class="fa fa-calculator fs-3"></i>
                                </span>
                            </div>
                            <span class="d-block mb-1 text-nowrap">Accounting</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-primary"><i class='bx bx-cube fs-3'></i></span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Sales</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-success"><i class='bx bx-purchase-tag fs-3'></i></span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Purchase</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-danger"><i class='bx bx-cart fs-3'></i></span>
                        </div>

                        <span class="d-block mb-1 text-nowrap">Inventory</span>
                    </div>
                </div>
            </div>

            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-warning"><i class='bx bx-dock-top fs-3'></i></span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Spare Parts</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-danger"><i class='bx bx-message-square-detail fs-3'></i></span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Services</span>
                    </div>
                </div>
            </div>

            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-info">
                                <i class='fa fa-users fs-3'></i>
                            </span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Users</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-warning"><i class='bx bx-dock-top fs-3'></i></span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Documents</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-danger"><i class='bx bx-message-square-detail fs-3'></i></span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Note</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-primary">
                                <i class="fa fa-search fs-3"></i>
                            </span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Find Vehicle</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-success"><i class='bx bx-purchase-tag fs-3'></i></span>
                        </div>
                        <span class="d-block mb-1 text-nowrap">Role</span>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-6 mb-4">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="avatar avatar-md mx-auto mb-3">
                            <span class="avatar-initial rounded-circle bg-label-danger">
                                <i class='fa fa-cogs fs-3'></i>
                            </span>
                        </div>

                        <span class="d-block mb-1 text-nowrap">Setting</span>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

@endsection