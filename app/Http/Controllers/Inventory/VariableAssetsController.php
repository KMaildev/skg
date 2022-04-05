<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Models\MainWarehouse;
use App\Models\VariableAssets;
use Illuminate\Http\Request;

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
    public function store(Request $request)
    {
        $variable_assets = new VariableAssets();
        $variable_assets->main_warehouse_id = $request->main_warehouse;
        $variable_assets->item_name = $request->item_name;
        $variable_assets->unit = $request->unit;
        $variable_assets->qty = $request->qty;
        $variable_assets->remark = $request->remark;
        $variable_assets->save();
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
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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
