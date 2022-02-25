<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['register' => false]);

Route::middleware('auth')->group(function () {

    Route::get('/home', 'HomeController@index')->name('home');

    // Accounting Route
    Route::resource('accountingdashboard', 'AccountingDashboardController');

    Route::resource('accountclassification', 'Accounting\AccountClassificationController');
    Route::get('classificationdependent/ajax/{id}', array('as' => 'classificationdependent.ajax', 'uses' => 'Accounting\AccountClassificationController@dependentAjax'));

    Route::resource('accounttype', 'Accounting\AccountTypeController');
    Route::get('accounttypedependent/ajax/{id}', array('as' => 'accounttypedependent.ajax', 'uses' => 'Accounting\AccountTypeController@dependentAjax'));

    Route::resource('chartofaccount', 'Accounting\ChartofAccountController');
    // Accounting Route


    // Inventory Route
    Route::resource('inventorydashboard', 'Inventory\DashboardController');
    Route::resource('material', 'Inventory\MaterialController');

    Route::resource('unitsofmeasure', 'Inventory\UnitsOfMeasureController');
    Route::resource('labour', 'Inventory\LabourController');

    Route::resource('warehouseplan', 'Inventory\WarehousePlanController');


    //Project
    Route::resource('projectdashboard', 'Project\ProjectDashboardController');
    Route::resource('customers', 'CustomersController');
    Route::get('customerdependent/ajax/{id}', array('as' => 'customerdependent.ajax', 'uses' => 'CustomersController@dependentAjax'));
    Route::resource('proposal', 'Project\ProposalController');
    Route::resource('project', 'Project\ProjectController');


    Route::resource('floorplan', 'FloorPlanController');
    Route::get('floorplancreate/{id}', [
        'as' => 'floorplan.create',
        'uses' => 'FloorPlanController@create'
    ]);

    Route::resource('quotationproposal', 'QuotationProposalController');
    Route::get('quotationproposalcreate/{id}', [
        'as' => 'quotationproposal.create',
        'uses' => 'QuotationProposalController@create'
    ]);


    //Engineering
    Route::resource('engineeringrequest', 'EngineerRequestController');
});
