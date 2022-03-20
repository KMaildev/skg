@extends('layouts.menus.engineer')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-8 col-sm-12">


            <div class="col-xxl">
                <div class="card mb-4">
                    <h5 class="card-header">Engineer Request</h5>
                    <form class="card-body" autocomplete="off" action="{{ route('project.store') }}" method="POST"
                        id="create-form">
                        @csrf

                        <input type="hidden" name="project_id" value="{{ $project->id }}" id="project_id">
                        <input type="hidden" name="_token" id="csrf" value="{{ Session::token() }}">

                        <h6 class="mb-b fw-bold" style="font-weight: bold; font-size: 15px;">1. Request Info</h6>
                        <div class="row g-3">

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
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

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Request Date</label>
                                        <input type="text" class="form-control @error('request_date') is-invalid @enderror"
                                            name="request_date" />
                                        @error('request_date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="mb-3">
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
                        <h6 class="mb-3 fw-bold" style="font-weight: bold; font-size: 15px;">2. Request Items</h6>
                        <div>
                            <table class="table table-bordered">

                                <tr>
                                    <th>Item Name</th>
                                    <th>Quantity</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>
                                        <select class="select2 form-select form-select-lg" data-allow-clear="false"
                                            name="item_name" id="item_name">
                                            <option value="">--Please Item Name--</option>
                                            @foreach ($fixed_assets as $key => $value)
                                                <option value="{{ $value->id }}">
                                                    {{ $value->item_name ?? '-' }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td>
                                        <input type="text" class="form-control @error('quantity') is-invalid @enderror"
                                            name="quantity" id="quantity" />
                                        @error('quantity')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-success" id="butsave">
                                            Add
                                        </button>
                                    </td>
                                </tr>

                                <tr>
                                    <input type="text" class="form-control" id="ItemName" />
                                </tr>
                            </table>
                            <button type="submit" class="btn btn-outline-success btn-block">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreProject', '#create-form') !!}

    <script>
        $(document).ready(function() {
            $('#butsave').on('click', function() {
                var item_name = $('#item_name').val();
                var quantity = $('#quantity').val();
                var project_id = $('#project_id').val();
                if (item_name != "" && quantity != "" && project_id != "") {
                    $.ajax({
                        url: "/requestitemstore",
                        type: "POST",
                        data: {
                            _token: $("#csrf").val(),
                            item_name: item_name,
                            quantity: quantity,
                            project_id: project_id,
                        },
                        success: function(response) {
                            if (response.success) {
                                get_items()
                            } else {
                                alert("Error")
                            }
                        }
                    });
                } else {
                    alert('Please fill all the field !');
                }
            });

            function get_items() {
                $.ajax({
                    url: '/get_reques_titem_ajax',
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        $("#ItemName").val(data.fixed_asset_id);
                        $("#Quantity").val(data.quantity);
                    }
                });
            }
        });
    </script>
@endsection
