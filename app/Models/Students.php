<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Teachers;
use Illuminate\Database\Eloquent\SoftDeletes;
class Students extends Model
{
    use HasFactory;
    use SoftDeletes;
    
    protected $fillable = [
        'name',
        'class_name',
        'admission_date',
        'yearly_fees',
        'teacher_id'
    ];

    public function teacher()
    {
        return $this->belongsTo(Teachers::class);
    }

}
