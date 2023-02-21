<?php

namespace App\Traits;

trait GeneralTrait
{

    public function getCurrentLang()
    {
        return app()->getLocale();
    }

    public function returnError( $msg)
    {
        return response()->json([
            'status' => false,
            // 'errNum' => $errNum,
            'msg' => $msg
        ],200);
    }


    public function returnSuccessMessage($msg = "", $errNum = "200")
    {
        return [
            'status' => true,
            'errNum' => $errNum,
            'msg' => $msg
        ];
    }

    public function returnData($key, $value, $msg = "")
    {
        return response()->json([
            'status' => true,
            // 'errNum' => "200",
            'msg' => $msg,
            $key => $value
        ]);
    }
     public function returnDataa($key, $value, $msg)
    {
        return response()->json([
            'status' => true,
            // 'errNum' => "200",
            'msg' => $msg,
            $key => $value
        ],200);
    }


    //////////////////
    public function returnValidationError($code = "E001", $validator)
    {
        return $this->returnError($code, $validator->errors()->first());
    }


    public function returnCodeAccordingToInput($validator)
    {
        $inputs = array_keys($validator->errors()->toArray());
        $code = $this->getErrorCode($inputs[0]);
        return $code;
    }

    public function getErrorCode($input)
    {
        if ($input == "name")
            return '404';

        else if ($input == "password")
            return '404';

        else if ($input == "mobile")
            return '404';

        else if ($input == "id_number")
            return '404';

        else if ($input == "birth_date")
            return '404';

        else if ($input == "agreement")
            return '404';

        else if ($input == "email")
            return '404';

        else if ($input == "city_id")
            return '404';

        else if ($input == "insurance_company_id")
            return '404';

        else if ($input == "activation_code")
            return '404';

        else if ($input == "longitude")
            return '404';

        else if ($input == "latitude")
            return '404';

        else if ($input == "id")
            return '404';

        else if ($input == "promocode")
            return '404';

        else if ($input == "doctor_id")
            return '404';

        else if ($input == "payment_method" || $input == "payment_method_id")
            return '404';

        else if ($input == "day_date")
            return '404';

        else if ($input == "specification_id")
            return '404';

        else if ($input == "importance")
            return '404';

        else if ($input == "type")
            return '404';

        else if ($input == "message")
            return '404';

        else if ($input == "reservation_no")
            return '404';

        else if ($input == "reason")
            return '404';

        else if ($input == "branch_no")
            return '404';

        else if ($input == "name_en")
            return '404';

        else if ($input == "name_ar")
            return '404';

        else if ($input == "gender")
            return '404';

        else if ($input == "nickname_en")
            return '404';

        else if ($input == "nickname_ar")
            return '404';

        else if ($input == "rate")
            return '404';

        else if ($input == "price")
            return '404';

        else if ($input == "information_en")
            return '404';

        else if ($input == "information_ar")
            return '404';

        else if ($input == "street")
            return '404';

        else if ($input == "branch_id")
            return '404';

        else if ($input == "insurance_companies")
            return '404';

        else if ($input == "photo")
            return '404';

        else if ($input == "logo")
            return '404';

        else if ($input == "working_days")
            return '404';

        else if ($input == "insurance_companies")
            return '404';

        else if ($input == "reservation_period")
            return '404';

        else if ($input == "nationality_id")
            return '404';

        else if ($input == "commercial_no")
            return '404';

        else if ($input == "nickname_id")
            return '404';

        else if ($input == "reservation_id")
            return '404';

        else if ($input == "attachments")
            return '404';

        else if ($input == "summary")
            return '404';

        else if ($input == "user_id")
            return '404';

        else if ($input == "mobile_id")
            return '404';

        else if ($input == "paid")
            return '404';

        else if ($input == "use_insurance")
            return '404';

        else if ($input == "doctor_rate")
            return '404';

        else if ($input == "provider_rate")
            return '404';

        else if ($input == "message_id")
            return '404';

        else if ($input == "hide")
            return '404';

        else if ($input == "checkoutId")
            return '404';

        else
            return "";
    }


}
