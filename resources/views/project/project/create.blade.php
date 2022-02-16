@extends('layouts.menus.project')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-6 col-sm-12">


            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Project</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('customers.store') }}" method="POST"
                        id="create-form">
                        @csrf


                        <h6 class="mb-b fw-normal">1. Customer Info</h6>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="select2Basic">Customer</label>
                            <div class="col-sm-9">
                                <select id="select2Basic"
                                    class="select2 form-select form-select-lg @error('customer') is-invalid @enderror"
                                    data-allow-clear="true">
                                    <option value="">--Please Select Customer--</option>
                                    @foreach ($customers as $customer)
                                        <option value="{{ $customer->id }}">
                                            {{ $customer->name }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('customer')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Site
                                Location</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('site_location') is-invalid @enderror"
                                    name="site_location" value="{{ old('site_location') }}" />
                                @error('site_location')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Building
                                Area</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('building_area') is-invalid @enderror"
                                    name="building_area" value="{{ old('building_area') }}" />
                                @error('building_area')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Construction
                                Type</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('construction_type') is-invalid @enderror"
                                    name="construction_type" value="{{ old('construction_type') }}" />
                                @error('construction_type')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-username">Job Scope</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('job_scope') is-invalid @enderror"
                                    name="job_scope" value="{{ old('job_scope') }}" />
                                @error('job_scope')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-3 fw-normal">2. Personal Info</h6>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                                    value="{{ old('name') }}" />
                                @error('name')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label text-sm-end" for="alignment-full-name">Phone</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone"
                                    value="{{ old('phone') }}" />
                                @error('phone')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="pt-4">
                            <div class="row justify-content-end">
                                <div class="col-sm-9">
                                    <button type="submit" class="btn btn-primary me-sm-2 me-1">Save</button>
                                    <a href="{{ route('customers.index') }}" class="btn btn-label-secondary">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreCustomer', '#create-form') !!}
@endsection
