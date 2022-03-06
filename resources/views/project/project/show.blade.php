@extends('layouts.menus.project')
@section('content')
    <h4 class="breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Project /</span> {{ $project->customer_table->project_code ?? '' }}
    </h4>

    <div class="row">
        <div class="col-md-6 col-lg-6 col-xl-6 mb-6 order-0">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="card-title mb-0">Customer</h5>
                </div>
                <div class="card-body pb-3">
                    <ul class="p-0 m-0">
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-primary"><i
                                        class='bx bx-cube'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Total Products</p>
                                    <small class="text-muted">2k New Products</small>
                                </div>
                                <div class="item-progress">10k</div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-info"><i
                                        class='bx bx-pie-chart-alt'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Total Sales</p>
                                    <small class="text-muted">39k New Sales</small>
                                </div>
                                <div class="item-progress">26M</div>
                            </div>
                        </li>
                        <li class="d-flex mb-3">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-danger"><i
                                        class='bx bx-credit-card'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Total Revenue</p>
                                    <small class="text-muted">43k New Revenue</small>
                                </div>
                                <div class="item-progress">15M</div>
                            </div>
                        </li>
                        <li class="d-flex">
                            <div class="avatar avatar-sm flex-shrink-0 me-3">
                                <span class="avatar-initial rounded-circle bg-label-success"><i
                                        class='bx bx-dollar'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <p class="mb-0 lh-1">Total Cost</p>
                                    <small class="text-muted">Total Expenses</small>
                                </div>
                                <div class="item-progress">2B</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection
