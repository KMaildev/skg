<?php

namespace App\Http\Controllers\Engineer;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreEngineerReturn;
use App\Models\EngineerReturnInfo;
use App\Models\FixedAssets;
use App\Models\return_item;
use App\Models\ReturnItem;
use App\User;
use Illuminate\Http\Request;

class EngineerReturnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_id = auth()->user()->id;
        $returns = EngineerReturnInfo::where('return_user_id', $user_id)->get();
        return view('engineer.return.index', compact('returns'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $fixed_assets = FixedAssets::all();
        $user_id = auth()->user()->id;
        $projects_users = User::where('id', $user_id)->get();
        return view('engineer.return.create', compact('fixed_assets', 'projects_users'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreEngineerReturn $request)
    {
        $user_id = auth()->user()->id;
        $eng_return = new EngineerReturnInfo();
        $eng_return->return_code = $request->return_code;
        $eng_return->return_date = $request->return_date;
        $eng_return->return_from_id = $request->return_from;
        $eng_return->return_user_id = $user_id;
        $eng_return->save();
        $eng_return_id = $eng_return->id;

        foreach ($request->returnItemFields as $key => $value) {
            $insert[$key]['fixed_asset_id'] = $value['item_name'];
            $insert[$key]['quantity'] = $value['quantity'];
            $insert[$key]['user_id'] = $user_id;
            $insert[$key]['engineer_return_info_id'] = $eng_return_id;
            $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
            $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
        }
        ReturnItem::insert($insert);
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
        $return_info = EngineerReturnInfo::findOrFail($id);
        return view('engineer.return.show', compact('return_info'));
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
