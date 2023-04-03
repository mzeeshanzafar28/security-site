<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class stafflistModel extends Model
{
    use HasFactory;
    
    function subcontractor(){
        return $this->belongsTo(subcontractorModel::class,'staffsubcontractor_name');
    }
}
    