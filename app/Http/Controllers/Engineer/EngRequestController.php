<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreRequestInfo;
use App\Models\EngRequestItem;
use App\Models\FixedAssets;
use App\Models\Projects;
use App\Models\RequestInfo;
use App\User;
use Illuminate\Http\Request;

class EngRequestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id = null)
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRequestInfo $request)
    {
        $user_id = auth()->user()->id;
        $request_info = new RequestInfo();
        $request_info->request_code = $request->request_code;
        $request_info->request_date = $request->request_date;
        $request_info->work_scope = $request->work_scope;
        $request_info->user_id = $user_id;
        $request_info->project_id = $request->project_id;
        $request_info->customer_id = $request->customer_id;
        $request_info->save();
        $request_info_id = $request_info->id;

        foreach ($request->requestItemFields as $key => $value) {
            $insert[$key]['fixed_asset_id'] = $value['item_name'];
            $insert[$key]['quantity'] = $value['quantity'];
            $insert[$key]['user_id'] = $user_id;
            $insert[$key]['project_id'] = $request->project_id;
            $insert[$key]['customer_id'] = $request->customer_id;
            $insert[$key]['request_info_id'] = $request_info_id;
            $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
            $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
        }
        EngRequestItem::insert($insert);
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
        // $request_infos = RequestInfo::get()->where('project_id', $id);
        $eng_request_items = RequestInfo::with('eng_request_items_table')->get()->where('project_id', $id);
        return view('engineer.request.show', compact('eng_request_items'));
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

    public function engrequest_create($id = null)
    {
        $fixed_assets = FixedAssets::all();
        $project = Projects::findOrFail($id);
        return view('engineer.request.create', compact('fixed_assets', 'project'));
    }
}
