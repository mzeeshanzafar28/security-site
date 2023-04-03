<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class activitiesoccured extends Model
{
    use HasFactory;
    public $timestamps = true;
    
    function monitoring(){
        return $this->belongsTo(monitoring::class,'Week_Commencing' );
    }
    
    function site(){
        return $this->belongsTo(sites::class,'sitename_id');
    }
    
    function activity(){
        return $this->belongsTo(activities::class,'Activity_Type');
    }
}
    