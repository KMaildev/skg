@if ($request_info->actual_voucher_upload)
    <a href="{{ route('logistics_team_check_create', ['id' => $request_info->id]) }}">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Finished</span>
                <span class="text-muted">
                    {{ $request_info->actual_voucher_upload_date }}
                </span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <div class="d-flex justify-content-between mb-1">
                <span>
                    <a href="{{ route('floorplan.show', $request_info->id) }}">
                        View File
                    </a>
                </span>

                <span>
                    <a href="{{ route('floorplan.create', ['id' => $request_info->id]) }}">
                        Upload
                        <i class="bx bx-upload"></i>
                    </a>
                </span>
            </div>
        </div>
    </a>
@else
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>No</span>
        </div>
        <div class="progress" style="height:6px;">
            <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
        <div class="d-flex justify-content-start mb-1">
            <span style="font-size: 12px; text-align: left">
                <a href="{{ route('variable_actual_voucher_upload', ['id' => $request_info->id]) }}">
                    Upload Voucher
                </a>
            </span>
        </div>
    </div>
@endif
