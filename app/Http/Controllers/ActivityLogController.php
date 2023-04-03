<?php

namespace App\Http\Controllers;

use App\Models\ActivityLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Goutte\Client;
use Goutte;
use GuzzleHttp\Client as GuzzleClient;

class ActivityLogController extends Controller
{
    public function index()
    {
        if (Auth::user()->parent_id == 0) {
            $data = ActivityLog::with('user')->where('user_id', Auth::id())->orderBy('id', 'DESC')->get();
        }else {
            $data = ActivityLog::with('user')->where('user_id', Auth::user()->parent_id)->orderBy('id', 'DESC')->get();
        }

        return view('activitylog.index', get_defined_vars());
    }


    private $data = [];

    public function siaTest(Request $request)
    {
        
        $validations = [
            'LicenseNo' => 'required|digits:16|numeric',
        ];  

        $request->validate($validations);
        $params = ['LicenseNo' => $request->LicenseNo];
        
        $crawler = Goutte::request('POST', 'https://services.sia.homeoffice.gov.uk/PublicRegister/SearchPublicRegisterByLicence', $params);
        $check = $crawler->filter('.voffset4 .ax_h2')->text();
        
        if($check == 'No Record Found'){
            $request->session()->flash('error', 'No Record Found');
            return redirect()->back();
        }else{
            $crawler->filter('.col-md-3 .form-group .ax_h5')->each(function ($node) {
                if(is_array($this->data)){
                    array_push($this->data, $node->text());
                }
            });
            $crawler->filter('.col-md-3 .form-group .ax_h4')->each(function ($node) {
                if(is_array($this->data)){
                    array_push($this->data, $node->text());
                }
            });
            array_push($this->data, $crawler->filter('.ax_h4_green')->text());
            array_push($this->data, $crawler->filter('.as-on-date')->text());

            // dd($this->data);
            $report = [
                'first_name' => $this->data[0],
                'last_name' => $this->data[1],
                'sia_number' => $this->data[2],
                'role' => $this->data[3],
                'sector' => $this->data[4],
                'expiry_date' => $this->data[5],
                'status' => $this->data[6].' '.$this->data[7],
            ];
            dd($report);
            
        }
    }
}
