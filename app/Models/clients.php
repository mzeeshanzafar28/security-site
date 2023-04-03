<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class clients extends Model
{
    use HasFactory;

    public function sites()
    {
        return $this->hasMany(sites::class, 'clientname_id');
    }

    // this is a recommended way to declare event handlers
    public static function boot() {
        parent::boot();

        static::deleting(function($client) { // before delete() method call this
            foreach ($client->sites as $site) {
                $site->delete();
            }
            // $client->sites()->delete();
            // do the rest of the cleanup...
        });
    }

}
