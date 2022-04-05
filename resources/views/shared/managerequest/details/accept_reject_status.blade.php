@if ($request_info->accept_reject_status == 'accept')
    <span style="color: green; text-align: left;">
        {{ ucfirst($request_info->accept_reject_status) }}
    </span>
@elseif ($request_info->accept_reject_status == 'reject')
    <span style="color: red">
        {{ ucfirst($request_info->accept_reject_status) }}
    </span>
@else
    <span style="color: red;">
        Unknown
    </span>
@endif