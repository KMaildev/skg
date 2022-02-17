<li class="d-flex mb-2">
    <div class="avatar avatar-sm flex-shrink-0 me-3">
        <span class="avatar-initial rounded-circle bg-label-success">
            <i class="bx bx-check"></i>
        </span>
    </div>
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>Finished &nbsp;&nbsp;</span>
            <span class="text-muted">
                @php
                    echo $date;
                @endphp
            </span>
        </div>
        <div class="progress" style="height:6px;">
            <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
    </div>
</li>
