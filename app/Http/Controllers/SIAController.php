<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Goutte\Client;
use Goutte;
use GuzzleHttp\Client as GuzzleClient;
use SplFileObject;
use Carbon\Carbon;

class SIAController extends Controller
{
    private $data = [];

    public function index()
    {
        $results = [];

        return view('siacheck', get_defined_vars());
    }

    public function checkCSV(Request $request)
    {
        $request->validate(['sia_file' => 'required']);

        $file = $request->sia_file;

        $sia_data = [];
        $csv = new SplFileObject($file);
        $csv->setFlags(SplFileObject::READ_CSV);
        $csv->setCsvControl(' ');
        foreach ($csv as $key => $value) {
            array_push($sia_data, $value[0]);
        }

        // dd($sia_data);
        $results = [];
        foreach ($sia_data as $licenseNo) {
            try {
                $params = ['LicenseNo' => $licenseNo];

                $crawler = Goutte::request('POST', 'https://services.sia.homeoffice.gov.uk/PublicRegister/SearchPublicRegisterByLicence', $params);
                $check = $crawler->filter('.voffset4 .ax_h2')->text();
                // dd($check);

                if ($check == 'No Record Found') {
                    $report = [
                        'first_name' => 'No Result Found',
                        'last_name' => 'No Result Found',
                        'sia_number' => $licenseNo,
                        'role' => 'No Result Found',
                        'sector' => 'No Result Found',
                        'expiry_date' => 'No Result Found',
                        'remaining_days' => 'No Result Found',
                        'status' => 'No Result Found',
                    ];
                    // $request->session()->flash('error', 'No Record Found');
                    // return redirect()->back();
                } else {
                    $crawler->filter('.col-md-3 .form-group .ax_h5')->each(function ($node) {
                        if (is_array($this->data)) {
                            array_push($this->data, $node->text());
                        }
                    });
                    $crawler->filter('.col-md-3 .form-group .ax_h4')->each(function ($node) {
                        if (is_array($this->data)) {
                            array_push($this->data, $node->text());
                        }
                    });
                    array_push($this->data, $crawler->filter('.ax_h4_green')->text());
                    array_push($this->data, $crawler->filter('.as-on-date')->text());
                     $exp_date = Carbon::createFromFormat('d M Y', $this->data[5]);
                    $today = Carbon::now();
                    $remaining_days = $exp_date->diffInDays($today);
                    
                    

                    // dd($this->data);
                    $report = [
                        'first_name' => $this->data[0],
                        'last_name' => $this->data[1],
                        'sia_number' => $this->data[2],
                        'role' => $this->data[3],
                        'sector' => $this->data[4],
                        'expiry_date' => $this->data[5],
                        'remaining_days' => $remaining_days,
                        'status' => $this->data[6] . ' ' . $this->data[7],
                    ];
                }
                array_push($results, $report);
                // dd($this->data);
                $this->data = [];
            } catch (\Throwable $th) {
                session()->flash('error', 'System error occurs, Please try later');
                return redirect()->back();
            }
        }

        // dd($results);
        return view('siacheck', get_defined_vars());
    }
}
