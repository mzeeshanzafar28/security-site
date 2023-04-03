<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class monitoring extends Model
{
    use HasFactory;
    
    function site(){
        return $this->belongsTo(sites::class,'sitename_id');
    }
    
    function activity(){
        return $this->belongsTo(activities::class,'Activity_Type');
    }
    function stafflist(){
        return $this->belongsTo(stafflistModel::class);
    }

    public function monitoring_staff()
    {
        return $this->hasMany(MonitoringStaff::class);
    }

    public function acyivities()
    {
        return $this->hasMany(activitiesoccured::class, 'Week_Commencing');
    }

    // public function visits()
    // {
    //     return $this->hasMany(SupervisoryVisit::class, 'date', 'Week_Commencing');
    // }

    public static function boot() {
        parent::boot();

        static::deleting(function($monitoring) { // before delete() method call this
            foreach ($monitoring->monitoring_staff as $shift) {
                $shift->delete();
            }
            foreach ($monitoring->acyivities as $activity) {
                $activity->delete();
            }
            //  $monitoring->monitoring_staff()->delete();
             // do the rest of the cleanup...
        });
    }
}
    