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
    return view('auth.login');
});

Auth::routes(['register' => false]);

Route::middleware('auth')->group(function () {

    Route::get('/home', 'HomeController@index')->name('home');
    Route::view('/file_manager', 'file_manager.index')->name('file_manager.index');

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

    Route::resource('warehouseplan', 'Inventory\WarehousePlanController'); //Old Not Using Now
    Route::resource('manage_warehouse_plan', 'Warehouse\ManageWareHousePlanController'); // New 
    Route::resource('managerequest', 'Inventory\ManageRequestController');
    Route::resource('variable_assets_size', 'Inventory\VariableAssetsSizeController');
    Route::get('variable_assets_size_ajax/{id}', array('as' => 'variable_assets_size_ajax', 'uses' => 'Inventory\VariableAssetsSizeController@getAllVariableAssetsSizes'));

    Route::resource('variable_assets_request', 'ManageVariableRequest\VariableAssetsRequestController');
    Route::resource('variable_accept_reject_status', 'ManageVariableRequest\VariableAcceptRejectStatusController');
    Route::resource('variable_qs_team_check', 'ManageVariableRequest\VariableQsTeamCheckController');
    Route::get('variable_qs_team_check_create/{id}', [
        'as' => 'variable_qs_team_check_create',
        'uses' => 'ManageVariableRequest\VariableQsTeamCheckController@create'
    ]);

    Route::resource('variable_logistics_team_check', 'ManageVariableRequest\VariableLogisticsTeamCheckController');
    Route::get('variable_logistics_check_create/{id}', [
        'as' => 'variable_logistics_check_create',
        'uses' => 'ManageVariableRequest\VariableLogisticsTeamCheckController@create'
    ]);

    Route::resource('management_accept_reject', 'ManageVariableRequest\ManagementVariableAcceptRejectStatusController');
    Route::resource('variable_actual_voucher', 'ManageVariableRequest\VariableActualVoucherController');
    Route::get('variable_actual_voucher_upload/{id}', [
        'as' => 'variable_actual_voucher_upload',
        'uses' => 'ManageVariableRequest\VariableActualVoucherController@actual_voucher_upload'
    ]);

    Route::resource('variable_finance', 'ManageVariableRequest\VariableFinancePaymentSlipController');
    Route::get('finance_payslip_upload/{id}', [
        'as' => 'finance_payslip_upload',
        'uses' => 'ManageVariableRequest\VariableFinancePaymentSlipController@payment_slip_upload'
    ]);

    Route::resource('variable_logistics_send', 'ManageVariableRequest\VariableLogisticsTeamSendController');
    Route::get('variable_logistics_send_form/{id}', [
        'as' => 'variable_logistics_send_form',
        'uses' => 'ManageVariableRequest\VariableLogisticsTeamSendController@send_form'
    ]);


    //Project
    Route::resource('projectdashboard', 'Project\ProjectDashboardController');
    Route::resource('customers', 'CustomersController');
    Route::get('customerdependent/ajax/{id}', array('as' => 'customerdependent.ajax', 'uses' => 'CustomersController@dependentAjax'));
    Route::resource('proposal', 'Project\ProposalController');
    Route::get('proposal_grid_view', 'Project\ProposalController@grid_view');
    Route::resource('project', 'Project\ProjectController');
    Route::get('get_projects_ajax/ajax/{id}', array('as' => 'get_projects_ajax.ajax', 'uses' => 'Project\ProjectController@getProjectsAjax'));
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


    //HR
    Route::resource('hrdashboard', 'HrDashboardController');
    Route::resource('engineer', 'hr\EngineerController');
    Route::get('project_add/{id}', [
        'as' => 'project_add',
        'uses' => 'hr\EngineerController@add_project'
    ]);
    Route::get('projects_users/ajax/{id}', array('as' => 'projects_users.ajax', 'uses' => 'hr\EngineerController@projectsUsersAjax'));

    //Department
    Route::resource('department', 'DepartmentController');
    Route::resource('role', 'RoleController');
    Route::resource('permission', 'PermissionController');

    Route::resource('employee', 'EmployeeController');
    Route::resource('profile', 'ProfileController');
    Route::resource('changepassword', 'ChangePasswordController');


    // Inventory Route
    Route::resource('inventorydashboard', 'Inventory\DashboardController');

    Route::resource('material', 'Inventory\MaterialController');

    Route::resource('unitsofmeasure', 'Inventory\UnitsOfMeasureController');
    Route::resource('labour', 'Inventory\LabourController');

    Route::resource('warehouseplan', 'Inventory\WarehousePlanController');
    Route::resource('mainwarehouse', 'MainWarehouseController');
    Route::resource('fixedassets', 'FixedAssetsController');
    Route::resource('accept_reject_status', 'Inventory\AcceptRejectStatusController');
    Route::resource('qs_team_check', 'Inventory\QsTeamCheckController');
    Route::get('qs_team_check_create/{id}', [
        'as' => 'qs_team_check_create',
        'uses' => 'Inventory\QsTeamCheckController@create'
    ]);

    Route::resource('logistics_team_check', 'Inventory\LogisticsTeamCheckController');
    Route::get('logistics_team_check_create/{id}', [
        'as' => 'logistics_team_check_create',
        'uses' => 'Inventory\LogisticsTeamCheckController@create'
    ]);

    Route::resource('transferhistory', 'Inventory\TransferhistoryController');

    Route::resource('inventory_engineer_return', 'Inventory\EngineerReturnController');

    Route::resource('inventory_qs_team_check', 'Inventory\ReturnQsTeamCheckController');
    Route::get('inventory_qs_team_check_create/{id}', [
        'as' => 'inventory_qs_team_check_create',
        'uses' => 'Inventory\ReturnQsTeamCheckController@create'
    ]);

    Route::resource('return_logistics_team_check', 'Inventory\ReturnLogisticsTeamCheckController');
    Route::get('return_logistics_team_check_create/{id}', [
        'as' => 'return_logistics_team_check_create',
        'uses' => 'Inventory\ReturnLogisticsTeamCheckController@create'
    ]);

    Route::resource('received_by_store_manager', 'Inventory\ReceivedByStoreManagerController');
    Route::resource('variable_assets', 'Inventory\VariableAssetsController');


    //Engineering
    Route::resource('engineerdashboard', 'Engineer\EngineerDashboardController');
    Route::resource('sites', 'Engineer\SitesController');

    Route::resource('engrequest', 'Engineer\EngRequestController');
    Route::get('engrequest_create/{id}', [
        'as' => 'engrequest_create',
        'uses' => 'Engineer\EngRequestController@engrequest_create'
    ]);
    Route::resource('requestitem', 'Engineer\RequestItem');
    Route::resource('engineeringrequest', 'EngineerRequestController');
    Route::resource('manage_my_request', 'Engineer\ManageMyRequestController');
    Route::resource('received_by_engineer', 'Engineer\ReceivedByEngineerController');



    Route::resource('engineer_return', 'Engineer\EngineerReturnController');
    Route::get('engineer_return_create_with_customer/{customer_id}', [
        'as' => 'engineer_return_create_with_customer',
        'uses' => 'Engineer\EngineerReturnController@create'
    ]);

    Route::resource('engineer_variable_assets', 'Engineer\EngineerVariableAssetsController');
    Route::resource('variable_engineer_received', 'Engineer\VariableReceivedByEngineerController');




    // Purchase
    Route::resource('fixed_assets_purchase', 'Purchase\FixedAssetsPurchaseController');

    Route::resource('activity', 'Activity\ActivityLogController');
    Route::resource('members_lists', 'MembersListsController');
});
