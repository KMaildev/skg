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
                                    <div class="">
                                        <label class="form-label" for="basic-default-fullname"
                                            style="font-weight: bold">Request Code</label>
                                        @php
                                            $code_count = count($request_infos);
                                            $increment1 = sprintf('%06d', $code_count + 1);
                                            $increment2 = sprintf('%06d', $code_count + 2);
                                            $increment3 = sprintf('%06d', $code_count + 3);
                                        @endphp
                                        <select class="form-select select2entry @error('code') is-invalid @enderror"
                                            name="code">
                                            <option value="R-{{ $increment1 }}">R-{{ $increment1 }}</option>
                                            <option value="R-{{ $increment2 }}">R-{{ $increment2 }}</option>
                                            <option value="R-{{ $increment3 }}">R-{{ $increment3 }}</option>
                                        </select>
                                        @error('code')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
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
                                                        @
                                                        {{ $project->customer_table->name ?? '' }}
                                                    </option>
                                                @endforeach
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Work Scope</label>
                                        <input type="text" class="form-control" name="work_scope" />
                                        @error('work_scope')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Request Date</label>
                                        <input type="text" class="form-control date_picker" placeholder="Month DD, YYYY"
                                            id="flatpickr-human-friendly" name="date" />
                                        @error('date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="">
                                        <label class="form-label" for="flatpickr-human-friendly"
                                            style="font-weight: bold">Need Date</label>
                                        <input type="text" class="form-control date_picker" placeholder="Month DD, YYYY"
                                            id="flatpickr-human-friendly" name="need_date" />
                                        @error('need_date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row py-5">
                            <table class="table table-bordered table-sm" id="addRemoveTable">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white; text-align: center;">Item Name & Size</th>
                                        <th style="color: white; text-align: center;">Size</th>
                                        <th style="color: white; text-align: center;">Qty</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td id="col0">
                                        <select class="form-select" data-allow-clear="false" name="variable_asset_id[]"
                                            id="item_name" required>
                                            @foreach ($variable_assets as $key => $value)
                                                <option value="{{ $value->id }}">
                                                    {{ $value->item_name ?? '-' }}
                                                    @if ($value->sizes)
                                                        = Size :
                                                        {{ $value->sizes }}
                                                    @endif
                                                </option>
                                            @endforeach
                                        </select>
                                    </td>

                                    <td id="col1">
                                        <input type="text" class="form-control" name="size[]" />
                                        @error('size')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </td>

                                    <td id="col2">
                                        <input type="text" class="form-control" name="quantity[]" required />
                                        @error('quantity')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div class="col-md-12">
                            <input type="button" value="Add Row" class="btn btn-info btn-sm" onclick="addRows()">
                            <input type="button" value="Delete Row" class="btn btn-danger btn-sm" onclick="deleteRows()" />
                            <input type="submit" value="Save" class="btn btn-primary btn-sm">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    @endsection

    @section('script')
        {!! JsValidator::formRequest('App\Http\Requests\StoreVariableRequestInfo', '#create-form') !!}

        <script type="text/javascript">
            function getVariableAssetsSizes(sel) {
                var variable_asset_id = sel.value;
                if (variable_asset_id) {
                    $.ajax({
                        url: '/variable_assets_size_ajax/' + variable_asset_id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            console.log(data)
                        }
                    });
                }
            }
        </script>
    @endsection
