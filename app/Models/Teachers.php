<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Students;

class Teachers extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'name',
        'email',
        'subject',
    ];

    public function students()
    {
        return $this->hasMany(Students::class);
    }

}
