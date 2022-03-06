@extends('layouts.menus.project')
@section('content')
    <h4 class="py-3 breadcrumb-wrapper mb-4">
        <span class="text-muted fw-light">Project / </span> Archi Exterior Design
    </h4>
    <div class="row mb-5">
        @foreach ($archi_exterior_designs as $key => $value)
            <div class="col-md-3 col-lg-3 col-sm-12 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">{{ $value->original_name }}</h5>
                        <h6 class="card-subtitle text-muted">{{ $value->created_at }}</h6>
                        <p class="card-text py-1">
                            Upload By {{ $value->users_table->name ?? '' }}
                        </p>
                        <img class="img-fluid d-flex mx-auto my-4" src="{{ Storage::url($value->archi_exterior_design_file) }}"
                            alt="{{ $value->original_name }}" />
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
