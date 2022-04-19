<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableAssets;
use App\Http\Requests\UpdateVariableAssets;
use App\Models\MainWarehouse;
use App\Models\VariableAssets;
use App\Models\VariableAssetsSize;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class VariableAssetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $variable_assets = VariableAssets::all();
        $variable_assets = VariableAssets::with('variable_request_items_table')->get();
        return view('inventory.variable_assets.index', compact('variable_assets'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $mainwarehouses = MainWarehouse::all();
        return view('inventory.variable_assets.create', compact('mainwarehouses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVariableAssets $request)
    {
        $variable_assets = new VariableAssets();
        $variable_assets->main_warehouse_id = $request->main_warehouse;
        $variable_assets->item_name = $request->item_name;
        $variable_assets->unit = $request->unit;
        $variable_assets->qty = $request->qty;
        $variable_assets->remark = $request->remark;
        if ($request->has('sizes')) {
            $sizes = $request->sizes;
            $variable_assets->sizes = implode(',', $sizes);
        } else {
            $variable_assets->sizes = 'null';
        }
        $variable_assets->save();

        $variable_asset_id = $variable_assets->id;
        if ($request->has('sizes')) {
            $sizes = $request->sizes;
            foreach ($sizes as $key => $value) {
                $insert[$key]['size'] = $value;
                $insert[$key]['variable_asset_id'] = $variable_asset_id;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
            VariableAssetsSize::insert($insert);
        }

        return redirect()->back()->with('success', 'Created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $mainwarehouses = MainWarehouse::all();
        $variable_asset = VariableAssets::findOrFail($id);
        return view('inventory.variable_assets.edit', compact('variable_asset', 'mainwarehouses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVariableAssets $request, $id)
    {
        $variable_assets = VariableAssets::findOrFail($id);
        $variable_assets->main_warehouse_id = $request->main_warehouse;
        $variable_assets->item_name = $request->item_name;
        $variable_assets->unit = $request->unit;
        $variable_assets->qty = $request->qty;
        $variable_assets->remark = $request->remark;

        if ($request->has('sizes')) {
            $sizes = $request->sizes;
            $variable_assets->sizes = implode(',', $sizes);
        } else {
            $variable_assets->sizes = 'null';
        }
        $variable_assets->update();

        // variable_assets_sizes update & delete
        $variable_assets_sizes = VariableAssetsSize::get()->where('variable_asset_id', $id);
        $variable_assets_sizes->each->delete();
        if ($request->has('sizes')) {
            $sizes = $request->sizes;
            foreach ($sizes as $key => $value) {
                $insert[$key]['size'] = $value;
                $insert[$key]['variable_asset_id'] = $id;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
            VariableAssetsSize::insert($insert);
        }

        return redirect()->back()->with('success', 'Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $fixed_assets = VariableAssets::findOrFail($id);
        $fixed_assets->delete();
        return redirect()->back()->with('success', 'Deleted successfully.');
    }
}
