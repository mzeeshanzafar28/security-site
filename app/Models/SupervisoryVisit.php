<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SupervisoryVisit extends Model
{
    use HasFactory;

    public function site()
    {
        return $this->belongsTo(sites::class);
    }

    public function staff()
    {
        return $this->belongsTo(stafflistModel::class, 'staff_id');
    }
}
