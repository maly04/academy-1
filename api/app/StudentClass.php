<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentClass extends Model
{
    protected $table = 'tbl_class';
	public $timestamps = false;
	protected $fillable = [
		'code',
		'name',
		'description'
	];
}
