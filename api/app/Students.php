<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Students extends Model
{
      //

    protected $table = 'tbl_students';


	public $timestamps = false;

	protected $fillable = [
		'name',
		'surname',
		'email',
		'phone',
		'address',
		'birthdate',
		'attendance',
		'class_id',
		'level_id',		
		'spe_id',
		'facebook'
	];


}
