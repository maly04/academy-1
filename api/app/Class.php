<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    protected $table = 'tbl_class';


	public $timestamps = false;

	protected $fillable = [
		'code',
		'name',
		'description'
	];
}
