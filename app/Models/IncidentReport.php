<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IncidentReport extends Model
{
    use HasFactory;

    public function site()
    {
        return $this->belongsTo(sites::class);
    }

    public function staff()
    {
        return $this->belongsTo(stafflistModel::class, 'guard_id');
    }
    public function client()
    {
        return $this->belongsTo(clients::class, 'client_id');
    }
}
