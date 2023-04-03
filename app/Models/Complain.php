<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Complain extends Model
{
    use HasFactory;

    public function client()
    {
        return $this->belongsTo(clients::class);
    }

    public function site()
    {
        return $this->belongsTo(sites::class);
    }
}
