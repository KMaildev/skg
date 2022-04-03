<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use App\Models\QsTeamCheckPass;
use App\Models\RequestInfo;
use Illuminate\Http\Request;

class QsTeamCheckController extends Controller
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
        $eng_request_items = RequestInfo::with('eng_request_items_table')->get()->where('id', $id);
        return view('inventory.qs_team_check.create', compact('eng_request_items'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_id = auth()->user()->id;
        $eng_request_item_id = $request->request_item_id;
        $eng_request_qty = $request->eng_request_qty;
        $project_id = $request->project_id;

        foreach ($request->passed_qty as $key => $value) {
            $insert[$key]['user_id'] = $user_id;
            $insert[$key]['eng_request_item_id'] = $eng_request_item_id[$key];
            $insert[$key]['project_id'] = $project_id;
            $insert[$key]['eng_request_qty'] = $eng_request_qty[$key];
            $insert[$key]['qs_passed_qty'] = $value;
            $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
            $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
        }

        QsTeamCheckPass::insert($insert);
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
