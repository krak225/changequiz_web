<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\User;


class RegisterUserFormRequest extends FormRequest
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
            //'nom' => 'required|string|max:255',
            //'prenoms' => 'required|string|max:255',
            // 'lang_code' => 'required|string|max:255',
            // 'telephone' => 'required|string|max:255|unique:users',
            //'email' => 'required|string|max:255|unique:users',
            'pseudo' => 'required|string|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
		];
    }
}
