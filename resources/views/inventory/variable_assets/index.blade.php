@extends('layouts.menus.inventory')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Variable Assets</h5>
                        <div class="card-title-elements ms-auto">
                            @include('layouts.includes.export')

                            <a href="{{ route('variable_assets.create') }}"
                                class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm" id="export_excel">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Item Name</th>
                                <th style="color: white; text-align: center;">Unit</th>
                                <th style="color: white; text-align: center;">Size</th>
                                <th style="color: white; text-align: center;">Original(Qty)</th>
                                <th style="color: white; text-align: center;">Request(Qty)</th>
                                <th style="color: white; text-align: center;">Remaining Balance</th>
                                <th style="color: white; text-align: center;">Remark</th>
                                <th style="color: white; text-align: center;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @php
                                $site_on_hand_request_total = 0;
                            @endphp
                            @foreach ($variable_assets as $key => $variable_asset)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $variable_asset->item_name ?? '-' }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $variable_asset->unit ?? '-' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $variable_asset->sizes ?? '' }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ number_format($variable_asset->qty) }}
                                    </td>

                                    <td style="text-align: center">
                                        @php
                                            $site_on_hand_total = 0;
                                        @endphp
                                        @foreach ($variable_asset->variable_request_items_table as $key => $variable_request_items)
                                            @php
                                                $site_on_hand_total += (float) $variable_request_items->quantity ?? 0;
                                                $site_on_hand_request_total += (float) $variable_request_items->quantity ?? 0;
                                            @endphp
                                        @endforeach
                                        {{ $site_on_hand_total }}
                                    </td>

                                    <td style="text-align: center">
                                        {{ $variable_asset->qty - $site_on_hand_total }}
                                    </td>

                                    <td style="text-align: center;">
                                        {{ $variable_asset->remark }}
                                    </td>

                                    <td style="text-align: center;">
                                        <div class="btn-group">
                                            <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">

                                                <li>
                                                    <a href="{{ route('variable_assets.edit', $variable_asset->id) }}"
                                                        class="dropdown-item">
                                                        Edit
                                                    </a>
                                                </li>

                                                <li>
                                                    <form
                                                        action="{{ route('variable_assets.destroy', $variable_asset->id) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="button" class="dropdown-item del_confirm"
                                                            id="confirm-text" data-toggle="tooltip">Delete</button>
                                                    </form>
                                                </li>

                                                <li>
                                                    <a href="#" class="dropdown-item">
                                                        Request Item Detail
                                                    </a>
                                                </li>


                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                        <tr>
                            <th colspan="4">Total</th>
                            <th style="text-align: center; font-weight: bold">
                                {{ $variable_assets->sum('qty') }}
                            </th>

                            <th style="text-align: center">
                                {{ $site_on_hand_request_total }}
                            </th>

                            <th style="text-align: center">
                                {{ $variable_assets->sum('qty') - $site_on_hand_request_total }}
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
