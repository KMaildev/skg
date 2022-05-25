<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreVariableRequestInfo;
use App\Models\FixedAssets;
use App\Models\VariableAssets;
use App\Models\VariableRequestInfo;
use App\Models\VariableRequestItem;
use App\User;
use Illuminate\Http\Request;

class EngineerVariableAssetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_id = auth()->user()->id;
        $eng_request_infos = VariableRequestInfo::with('variable_request_items_table')->where('engineer_id', $user_id)->get();
        return view('engineer.variable_assets.index', compact('eng_request_infos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $request_infos = VariableRequestInfo::all();
        $variable_assets = VariableAssets::all();
        $user_id = auth()->user()->id;
        $projects_users = User::where('id', $user_id)->get();
        return view('engineer.variable_assets.create', compact('variable_assets', 'projects_users', 'request_infos'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVariableRequestInfo $request)
    {
        $user_id = auth()->user()->id;
        $variable_asset = new VariableRequestInfo();
        $variable_asset->code = $request->code;
        $variable_asset->date = $request->date;
        $variable_asset->need_date = $request->need_date;
        $variable_asset->work_scope = $request->work_scope;
        $variable_asset->customer_id = $request->customer_id;
        $variable_asset->engineer_id = $user_id;
        $variable_asset->save();
        $variable_asset_id = $variable_asset->id;

        foreach ($request->variable_asset_id as $key => $variable_asset) {
            VariableRequestItem::create([
                'variable_asset_id' => $variable_asset,
                'quantity' => $request->quantity[$key],
                'size' => $request->size[$key],
                'user_id' => $user_id,
                'variable_request_info_id' => $variable_asset_id,
            ]);
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
