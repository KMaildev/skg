<?php

namespace App\Http\Controllers\Project;

use App\Http\Controllers\Controller;
use App\Models\Projects;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProposalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        //https://stackoverflow.com/questions/61768376/how-to-calculate-a-few-days-left-or-the-last-few-days-in-carbon
        //https://stackoverflow.com/questions/37672025/get-day-difference-between-two-date-using-carbon/51001799#51001799

        $start_Date = '2022-02-16 01:56:00';
        $start = Carbon::parse($start_Date);
        $now = Carbon::now();
        $length = $start->diffForHumans($now);

        // echo $length;

        echo "<br>";
        $end_Date = '2022-02-17 05:49:00';
        $end = Carbon::parse($end_Date);
        $lengthFromEnd = $end->diffForHumans($now);
        // echo $lengthFromEnd;



        $startDate = Carbon::createFromFormat('Y-m-d H:i:s', '2022-02-16 10:45:00');
        $endDate = Carbon::createFromFormat('Y-m-d H:i:s', '2022-02-16 10:45:00');

        $days = $startDate->diffInDays($endDate);
        $hours = $startDate
            ->copy()
            ->addDays($days)
            ->diffInHours($endDate);
        $minutes = $startDate
            ->copy()
            ->addDays($days)
            ->addHours($hours)
            ->diffInMinutes($endDate);

        // echo $days . ' Days';
        // echo $hours . ' Hours';
        // echo $minutes;








        $projects = Projects::where('project_status', 'Proposal')->paginate(30);
        if (request('search')) {
            $projects = Projects::where('project_status', 'Proposal')->where(function ($query) {
                $query->where('project_code', 'Like', '%' . request('search') . '%');
            })->paginate(50);
        }
        return view('project.proposal.index', compact('projects'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
