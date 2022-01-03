<?php

namespace App\Http\Controllers;

use App\Models\Alm_estudiante;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;

class AlmEstudianteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $alm_estudiante = Alm_estudiante::paginate(5);
        return view('alumno.index')->with('alm_estudiante', $alm_estudiante);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('alumno.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $rules = [
            "alm_codigo"=>"required|unique:alm_estudiantes,alm_codigo",
            "alm_nombre"=>"required",
            "alm_edad"=>"required|min:1",
            "alm_observacion"=>"required",
            "alm_sexo"=>"required|not_in:0",
        ];

        $customMessages = [
            'alm_codigo.required' => 'Agregar codigo para el estudiante.',
            'alm_codigo.unique' => 'El codigo ya existe.',
            'alm_nombre.required' => 'Agregar nombre completo del estudiante.',
            'alm_edad.required' => 'Agregar edad cdel estudiante.',
            'alm_observacion.required' => 'Agregar su observación.',
            'alm_sexo.required' => 'Ssleccione el sexo del estudiante',
        ];

        $request->validate($rules, $customMessages);
        $alm_estudiante = Alm_estudiante::create($request->only('alm_codigo','alm_nombre','alm_edad','alm_observacion','alm_sexo'));
        Session::flash('mensaje', 'Registro guardado');
        return redirect()->route('estudiante.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Alm_estudiante  $alm_estudiante
     * @return \Illuminate\Http\Response
     */
    public function show(Alm_estudiante $alm_estudiante)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Alm_estudiante  $alm_estudiante
     * @return \Illuminate\Http\Response
     */
    public function edit($alm_estudiante)
    {
        //
        //return view('alumno.form')->with('alm_estudiante', $alm_estudiante);
        //return view('alumno.form',compact('alm_estudiante'));
        ///$task = Alm_estudiante::find($alm_estudiante);
        $users = DB::table('alm_estudiantes')->where('alm_id', $alm_estudiante)->get();
        return view('alumno.form',['alm_id'=>$alm_estudiante,'alm_codigo'=>$users]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Alm_estudiante  $alm_estudiante
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Alm_estudiante $alm_estudiante)
    {
        //
        /*$rules = [
            "alm_codigo"=>"required|unique:alm_estudiantes,alm_codigo,".$request["alm_codigo"],
            "alm_nombre"=>"required",
            "alm_edad"=>"required|min:2",
            "alm_observacion"=>"required",
            "alm_sexo"=>"required|not_in:0",
        ];

        $customMessages = [
            'alm_codigo.required' => 'Agregar codigo para el estudiante.',
            'alm_codigo.unique' => 'El codigo ya existe.'.$request["alm_codigo"],
            'alm_nombre.required' => 'Agregar nombre completo del estudiante.',
            'alm_edad.required' => 'Agregar edad cdel estudiante.',
            'alm_observacion.required' => 'Agregar su observación.',
            'alm_sexo.required' => 'Ssleccione el sexo del estudiante',
        ];

        $request->validate($rules, ['alm_codigo'=>'unique:alm_estudiantes,alm_codigo,'.$request["alm_id"].',alm_id'], $customMessages);
*/
        $update = Alm_estudiante::find($request["alm_id"]);
        $update->alm_nombre = $request["alm_nombre"];
        $update->save();

        Session::flash('mensaje', 'Registro actualizado');
        return redirect()->route('estudiante.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Alm_estudiante  $alm_estudiante
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Alm_estudiante $alm_estudiante)
    {
        //
        //$res=Alm_estudiante::find($alm_estudiante)->delete();
        //$project = Alm_estudiante::where('alm_id', true)->get()->each->delete();
        //$project->delete();  
        $user = Alm_estudiante::find($request["alm_id"]);
        $user->delete();
        Session::flash('mensaje', 'Registro eliminado');
        return redirect()->route('estudiante.index');
    }
}
