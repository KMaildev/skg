<?php

namespace App\Http\Controllers\Purchase;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreFixedAssetsPurchase;
use App\Models\FixedAssets;
use App\Models\FixedAssetsPurchase;
use Illuminate\Http\Request;

class FixedAssetsPurchaseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('purchase.fixed_assets.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $fixed_assets = FixedAssets::all();
        return view('purchase.fixed_assets.create', compact('fixed_assets'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFixedAssetsPurchase $request)
    {
        $user_id = auth()->user()->id;
        foreach ($request->fixed_asset_id as $key => $fixed_asset) {
            FixedAssetsPurchase::create([
                'reference' => $request->reference,
                'order_date' => $request->order_date,
                'user_id' => $user_id,

                'fixed_asset_id' => $fixed_asset,
                'qty' => $request->qty[$key],
                'desciption' => $request->desciption[$key],
            ]);
        }

        return redirect()->back()->with('success', 'Your processing has been completed.');
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
