<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MonitoringStaff extends Model
{
    use HasFactory;

    public function monitoring()
    {
        return $this->belongsTo(monitoring::class);
    }

    public function staff()
    {
        return $this->belongsTo(stafflistModel::class, 'staff_id');
    }
}
