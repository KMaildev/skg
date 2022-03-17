<?php

use Facade\FlareClient\Stacktrace\File;
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
    Route::post('projectsortable', 'Project\ProjectController@projectsortable');


    Route::resource('floorplan', 'FloorPlanController');
    Route::get('floorplancreate/{id}', [
        'as' => 'floorplan.create',
        'uses' => 'FloorPlanController@create'
    ]);


    Route::resource('processingfile', 'ProcessingFileController');
    Route::get('processingfilecreate/{id}', [
        'as' => 'createprocessingfile.create',
        'uses' => 'ProcessingFileController@create'
    ]);


    Route::resource('quotationproposal', 'QuotationProposalController');
    Route::get('quotationproposalcreate/{id}', [
        'as' => 'quotationproposal.create',
        'uses' => 'QuotationProposalController@create'
    ]);

    Route::resource('exteriordesign', 'ExteriorDesignController');
    Route::get('exterior_design_fees_create/{id}', [
        'as' => 'exterior_design_fees_create.create',
        'uses' => 'ExteriorDesignController@create'
    ]);


    Route::resource('structuredesignfees', 'StructureDesignFeesController');
    Route::get('structure_design_fees_create/{id}', [
        'as' => 'structure_design_fees_create.create',
        'uses' => 'StructureDesignFeesController@create'
    ]);


    Route::resource('structuredesign', 'StructureDesignController');
    Route::get('structuredesigncreate/{id}', [
        'as' => 'structuredesigncreate.create',
        'uses' => 'StructureDesignController@create'
    ]);


    Route::resource('archiexteriordesign', 'ArchiExteriorDesignController');
    Route::get('archiexteriordesigncreate/{id}', [
        'as' => 'archiexteriordesigncreate.create',
        'uses' => 'ArchiExteriorDesignController@create'
    ]);


    Route::resource('approvedby', 'ApprovedByController');
    Route::get('approvedbycreate/{id}', [
        'as' => 'approvedbycreate.create',
        'uses' => 'ApprovedByController@create'
    ]);


    Route::resource('permit', 'PermitController');
    Route::get('permitcreate/{id}', [
        'as' => 'permitcreate.create',
        'uses' => 'PermitController@create'
    ]);


    Route::resource('contract', 'ContractController');
    Route::get('contractcreate/{id}', [
        'as' => 'contractcreate.create',
        'uses' => 'ContractController@create'
    ]);

    //Engineering
    Route::resource('engineeringrequest', 'EngineerRequestController');



    //HR
    Route::resource('hrdashboard', 'HrDashboardController');
    Route::resource('engineer', 'hr\EngineerController');
    Route::get('project_add/{id}', [
        'as' => 'project_add',
        'uses' => 'hr\EngineerController@add_project'
    ]);

    //Department
    Route::resource('department', 'DepartmentController');
    Route::resource('role', 'RoleController');
    Route::resource('permission', 'PermissionController');

    Route::resource('employee', 'EmployeeController');
    Route::resource('profile', 'ProfileController');
    Route::resource('changepassword', 'ChangePasswordController');
});
