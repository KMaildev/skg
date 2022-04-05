@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-10 col-lg-10 col-sm-12">

            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Variable</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('engineer_variable_assets.store') }}"
                        method="POST" id="create-form">
                        @csrf

                        <h6 class="mb-b fw-bold" style="font-weight: bold; font-size: 15px;">1. Info</h6>
                        <div class="row g-3">

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Code</label>
                                        <input type="text" class="form-control @error('code') is-invalid @enderror"
                                            name="code" />
                                        @error('code')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Date</label>
                                        <input type="date" class="form-control" placeholder="Month DD, YYYY"
                                            id="flatpickr-human-friendly" name="date"
                                             />
                                        @error('date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
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
                        </div>


                        <hr class="my-4 mx-n4" />
                        <h6 class="mb-3 fw-bold" style="font-weight: bold; font-size: 15px;">2. Items</h6>
                        <div>
                            <table class="table table-bordered" id="dynamicAddRemove" style="margin-bottom: 20px;">
                                <tr>
                                    <th>Item Name</th>
                                    <th>Quantity</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>
                                        <select class="select2 form-select form-select-lg" data-allow-clear="false"
                                            name="returnItemFields[0][item_name]" id="item_name">
                                            <option value="">--Please Item Name--</option>
                                            @foreach ($variable_assets as $key => $value)
                                                <option value="{{ $value->id }}">
                                                    {{ $value->item_name ?? '-' }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </td>

                                    <td>
                                        <input type="text" class="form-control" name="returnItemFields[0][quantity]" />
                                        @error('quantity')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
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
    {!! JsValidator::formRequest('App\Http\Requests\StoreEngineerReturn', '#create-form') !!}

    <script>
        $(document).ready(function() {
            var i = 0;
            $("#dynamic-ar").click(function() {
                ++i;
                console.log(i);
                $("#dynamicAddRemove").append(
                    '<tr><td><select class="select2 form-select" data-allow-clear="false" name="returnItemFields[' + i + '][item_name]"> @foreach ($variable_assets as $key => $value) <option value="{{ $value->id }}">{{ $value->item_name ?? '-' }}</option> @endforeach </select></td > <td> <input type= "text" class="form-control" name="returnItemFields[' + i + '][quantity]" /> </td><td><button type="button" class="btn btn-outline-danger remove-input-field btn-sm">Remove</button></td></tr> '
                );
            });
            $(document).on('click', '.remove-input-field', function() {
                $(this).parents('tr').remove();
            });
        });
    </script>
@endsection
