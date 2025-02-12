<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Introduccion;
use App\Models\ComofuncionaGr;
use App\Models\EstrategiaReg;
use App\Models\InversionPublicas;
use App\Models\MisionGob;


class CategoriesController extends Controller{
    
    public function index(){

        $introduccion = Introduccion::latest()->first();

        return view('acerca.introduccionF', ['introduccion' => $introduccion]);
    }

    public function comofuncionaGrIndex(){

    $comofunciona = ComofuncionaGr::latest()->first();

    return view('acerca.comofunciona', ['comofunciona' => $comofunciona]);
}

    public function estrategiaregGrIndex(){

        $estrategia = EstrategiaReg::latest()->first();

        return view('acerca.estrategiaregional', ['estrategia' => $estrategia]);
}

    public function inversionespublicasGrIndex(){

        $inversiones = InversionPublicas::latest()->first();

        return view('acerca.inversionpublica', ['inversiones' => $inversiones]);
    }

    public function misiongobiernoGrIndex(){

        $mision = MisionGob::latest()->first();

        return view('acerca.misiongobierno', ['mision' => $mision]);
    }

}