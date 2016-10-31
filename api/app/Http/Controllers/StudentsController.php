<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Students as students;

use Illuminate\Support\Facades\DB;
use Response;

class StudentsController extends Controller
{
     //
    public function index(){
        // echo "test";
        $getStudent = DB::table('tbl_students')
                    ->select('tbl_students.id as sid','tbl_students.name as sname','tbl_students.surname as surname','tbl_students.email as email','tbl_students.phone as phone','tbl_class.name as cname','tbl_class.id as cid')
                    ->join('tbl_class','tbl_students.classroom_id','=','tbl_class.id')
                    ->get();
        // var_dump($getStudent);
        return Response::json($getStudent);    
    }
    public function studentPostData(Request $r){
        $student = new students;
        $student->name = $r->input("data.sname");
        $student->surname = $r->input("data.surname");
        $student->email = $r->input("data.email");
        $student->phone = $r->input("data.phone");
        // $student->address = $r->input("data.address");
        // $student->birthdate = $r->input("data.birthdate");
        // $student->attendance = $r->input("data.attendance");
        $student->classroom_id = $r->input("data.cid");
        // $student->classroom_id = 1;
        $student->level_id = 2; 
        $student->spe_id = 3; 
        $student->save();
        $getStudent = DB::table('tbl_students')
                    ->select('tbl_students.id as sid','tbl_students.name as sname','tbl_students.surname as surname','tbl_students.email as email','tbl_students.phone as phone','tbl_class.name as cname','tbl_class.id as cid')
                    ->join('tbl_class','tbl_students.classroom_id','=','tbl_class.id')
                    ->where("tbl_students.id","=", $student->id)
                    ->get()->first();
        return Response::json($getStudent);
    }
     public function editStudent($id,Request $r){   
        $update = students::findOrFail($id);
        $update->name = $r->input("sname");
        $update->surname = $r->input("surname");
        $update->email = $r->input("email");
        $update->phone = $r->input("phone");
        $update->classroom_id = $r->input("cid");
        $update->save();
         $getStudent = DB::table('tbl_students')
                    ->select('tbl_students.id as sid','tbl_students.name as sname','tbl_students.surname as surname','tbl_students.email as email','tbl_students.phone as phone','tbl_class.name as cname','tbl_class.id as cid')
                    ->join('tbl_class','tbl_students.classroom_id','=','tbl_class.id')
                    ->where("tbl_students.id","=", $id)
                    ->get()->first();
        return Response::json($getStudent);  

    }
    public function deleteStudent($id){
        $delete = students::destroy($id);

    }
}
