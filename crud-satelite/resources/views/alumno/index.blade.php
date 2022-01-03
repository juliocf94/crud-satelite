@extends('theme.base')

@section('content')
    <div class="container">
        <h1>Listado de estudiantes</h1>
        <a href="{{ route('estudiante.create') }}" class="btn btn-primary">Crear estudiante</a>
        @if (Session::has('mensaje'))
            <div class="alert alert-success" role="alert">
                {{Session::get('mensaje')}}
            </div>
        @endif
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Estudiante</th>
                    <th>Grado</th>
                    <th>Materias</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($alm_estudiante as $row)
                    <tr>
                        <td>{{$row->alm_id}}</td>
                        <td>{{$row->alm_nombre}}</td>
                        <td>{{$row->alm_edad}}</td>
                        <td>{{$row->alm_sexo}}</td>
                        <td>
                            <a href="{{ route('estudiante.edit', $row->alm_id) }}" class="btn btn-primary">Actualizar</a>
                        </td>
                    </tr>                        
                    @empty
                    <tr>
                        <td class="text-center" colspan="5">No hay registros</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
        @if ($alm_estudiante)
            {{$alm_estudiante->links()}}            
        @endif
    </div>
@endsection