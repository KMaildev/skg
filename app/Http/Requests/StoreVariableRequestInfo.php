<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreVariableRequestInfo extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'code' => 'required|unique:variable_request_infos,code',
            'date' => 'required',
            'customer_id' => 'required',
            'need_date' => 'required',
            'work_scope' => 'required',
            'returnItemFields.*.quantity' => 'required',
        ];
    }
}
