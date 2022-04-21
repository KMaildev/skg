@if ($request_info->logistics_team_check)
    <a href="{{ route('variable_logistics_check_create', ['id' => $request_info->id]) }}" hidden>
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Finished</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <span style="font-size: 12px; text-align: left">
                {{ $request_info->logistics_team_check_date }}
            </span>
        </div>
    </a>

    <a href="{{ route('variable_logistics_check_create', ['id' => $request_info->id]) }}">
        <span>Finished:</span>
        <span style="font-size: 12px; text-align: left">
            {{ $request_info->logistics_team_check_date }}
        </span>
    </a>
    <table style="width: 100%">
        <tr>
            <th> Qty </th>
            <th> Price </th>
            <th> Total Amt </th>
        </tr>
        @php
            $totalAmt = 0;
        @endphp
        @foreach ($request_info->variable_logistics_team_checks_table as $variable_logistics_team_check)
            <tr>
                <td style="text-align: center;">
                    {{ $variable_logistics_team_check->qs_passed_qty }}
                </td>

                <td style="text-align: center;">
                    {{ number_format($variable_logistics_team_check->price, 2) }}
                </td>

                <td style="text-align: center;">
                    {{ number_format($variable_logistics_team_check->qs_passed_qty * $variable_logistics_team_check->price, 2) }}
                    @php
                        $totalAmt += $variable_logistics_team_check->qs_passed_qty * $variable_logistics_team_check->price;
                    @endphp
                </td>
            </tr>
        @endforeach

        <tr style="font-weight: bold">
            <td style="text-align: center; font-weight: bold">
                {{ $request_info->variable_logistics_team_checks_table->sum('qs_passed_qty') }}
            </td>

            <td style="text-align: center; font-weight: bold">
                {{ number_format($request_info->variable_logistics_team_checks_table->sum('price'), 2) }}
            </td>

            <td style="text-align: center; font-weight: bold">
                {{ number_format($totalAmt, 2) }}
            </td>
        </tr>
    </table>
@else
    <a href="{{ route('variable_logistics_check_create', ['id' => $request_info->id]) }}">
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>No</span>
            </div>
            <div class="progress" style="height: 3px;">
                <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
        </div>
    </a>
@endif
