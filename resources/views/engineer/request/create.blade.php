@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10 col-lg-10 col-sm-12">
            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Engineer Request</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('engrequest.store') }}" method="POST"
                        id="create-form">
                        @csrf
                        {{-- {{ $project->id }} --}}
                        <input type="hidden" name="project_id" value="0" id="project_id">

                        <h6 class="mb-b fw-bold" style="font-weight: bold; font-size: 15px;">1. Request Info</h6>
                        <div class="row g-3">

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Request Code</label>
                                        <input type="text" class="form-control @error('request_code') is-invalid @enderror"
                                            name="request_code" />
                                        @error('request_code')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Site</label>
                                        <select class="select2 form-select form-select" data-allow-clear="false"
                                            name="customer_id">
                                            <option value="">--Please Site--</option>
                                            @foreach ($projects_users as $key => $value)
                                                @foreach ($value->projects as $project)
                                                    <option value="{{ $project->customer_table->id ?? '' }}">
                                                        {{ $project->customer_table->project_code ?? '' }}
                                                    </option>
                                                @endforeach
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Request Date</label>
                                        <input type="text" class="form-control date_picker" name="request_date"
                                            value="{{ date('Y-m-d') }}" />
                                        @error('request_date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Work Scope</label>
                                        <input type="text" class="form-control @error('work_scope') is-invalid @enderror"
                                            name="work_scope" />
                                        @error('work_scope')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr class="my-4 mx-n4" />
                        <h6 class=" fw-bold" style="font-weight: bold; font-size: 15px;">2. Request Items</h6>
                        <div>
                            <table class="table table-bordered" id="dynamicAddRemove" style="margin-bottom: 20px;">
                                <tr>
                                    <td>
                                        Item Name
                                    </td>
                                    <td>
                                        <select class="select2 form-select form-select-lg" data-allow-clear="false"
                                            name="requestItemFields[0][item_name]" id="item_name">
                                            <option value="">--Please Item Name--</option>
                                            @foreach ($fixed_assets as $key => $value)
                                                <option value="{{ $value->id }}">
                                                    {{ $value->item_name ?? '-' }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Quantity
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="requestItemFields[0][quantity]" />
                                        @error('quantity')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Action
                                    </td>
                                    <td>
                                        <button type="button"
                                            class="btn btn-outline-danger remove-input-field btn-sm">Remove</button>
                                    </td>
                                </tr>
                            </table>
                            <button type="button" class="btn btn-dark btn-sm" id="dynamic-ar">
                                Add a line
                            </button>
                        </div>
                        <hr>
                        <input type="submit" value="save" class="btn btn-success">
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreRequestInfo', '#create-form') !!}
    <script>
        $(document).ready(function() {
            var i = 0;
            $("#dynamic-ar").click(function() {
                ++i;
                console.log(i);
                $("#dynamicAddRemove").append(
                    '<tr><td>Item Name</td><td><select class="select2 form-select" data-allow-clear="false" name="requestItemFields[' + i + '][item_name]"> @foreach ($fixed_assets as $key => $value) <option value="{{ $value->id }}">{{ $value->item_name ?? '-' }}</option> @endforeach </select></td></tr> <tr><td>Quantity</td><td> <input type= "text" class="form-control" name="requestItemFields[' + i + '][quantity]" /> </td></tr><tr><td>Action</td><td><button type="button" class="btn btn-outline-danger remove-input-field btn-sm">Remove</button></td></tr>'
                );
            });
            $(document).on('click', '.remove-input-field', function() {
                $(this).parents('tr').remove();
            });
        });
    </script>
@endsection
