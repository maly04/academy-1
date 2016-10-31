<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\DB;
use App\Students as students;
use App\StudentClass as studentClass;
use Response;

class ExerciseController extends Controller
{
    //
    public function index(){
    	$getExercise =  DB::table('tbl_exercices_students')
					 ->select('tbl_exercices_students.id as id','tbl_chapters.name as cname','tbl_subject.name as sname','tbl_exercices.content as content','tbl_exercices.status as status','tbl_exercices_students.date_start as dstart')
					 ->Join('tbl_students','tbl_students.id', '=', 'tbl_exercices_students.student_id')
					 ->Join('tbl_exercices','tbl_exercices.id', '=', 'tbl_exercices_students.exercice_id')
					 ->Join('tbl_units','tbl_units.id', '=', 'tbl_exercices.unit_id')
					 ->Join('tbl_chapters','tbl_chapters.id', '=', 'tbl_units.chapter_id')
					 ->Join('tbl_subject','tbl_subject.id', '=', 'tbl_chapters.subject_id')
					 ->get();
		return Response::json($getExercise);
				
    }
    public function getChapter($id){
    	// $getstudentid = $_GET['id'];
    	$getex = students::where("id","=",$id)->get()->first();
    	return Response::json($getex);
    }
    public function getClass(){
    	$getClass = studentClass::all();
    	return Response::json($getClass);
    }
}
