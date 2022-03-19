<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreFixedAssets;
use App\Models\FixedAssets;
use App\Models\MainWarehouse;
use Illuminate\Http\Request;

class FixedAssetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('fixed_assets.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $mainwarehouses = MainWarehouse::all();
        return view('fixed_assets.create', compact('mainwarehouses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFixedAssets $request)
    {
        $fixed_assets = new FixedAssets();
        $fixed_assets->main_warehouse_id = $request->main_warehouse;
        $fixed_assets->item_name = $request->item_name;
        $fixed_assets->unit = $request->unit;
        $fixed_assets->qty = $request->qty;
        $fixed_assets->desciption = $request->remark;
        $fixed_assets->save();
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
        //
    }
}
