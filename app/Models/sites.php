<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sites extends Model
{
    use HasFactory;
    
    public function client(){
        return $this->belongsTo(clients::class,'clientname_id');
    }

    public function monitorings()
    {
        return $this->hasMany(monitoring::class, 'sitename_id');
    }

    public function activities()
    {
        return $this->hasMany(activitiesoccured::class, 'sitename_id');
    }
    public function visits()
    {
        return $this->hasMany(SupervisoryVisit::class, 'site_id');
    }

    // this is a recommended way to declare event handlers
    public static function boot() {
        parent::boot();

        // static::deleting(function($sites) { // before delete() method call this
        //     $sites->monitorings()->delete();
        //     // do the rest of the cleanup...
        // });

        static::deleting(function($site) { // before delete() method call this
            foreach ($site->monitorings as $monitoring) {
                $monitoring->delete();
            }

            foreach ($site->activities as $activity) {
                $activity->delete();
            }
            
            foreach ($site->visits as $visit) {
                $visit->delete();
            }
            // $site->monitorings()->delete();
            // do the rest of the cleanup...
        });
    }

}
