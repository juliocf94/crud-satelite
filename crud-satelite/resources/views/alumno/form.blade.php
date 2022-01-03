@extends('theme.base')

@section('content')
    <div class="container">
        @if (isset($alm_codigo))
            <h1>Editar estudiante</h1>
            @forelse ($alm_codigo as $item)

            @empty
                
            @endforelse
        @else 

        @endif
        @if (isset($alm_codigo))
            <form class="row g-3 needs-validated" novalidate action="{{ route('estudiante.update', @$item->alm_id) }}" method="post">
            <input type="hidden" name="alm_id" value="{{@$item->alm_id}}">
            @method('PUT')
        @else
            <form class="row g-3 needs-validated" novalidate action="{{ route('estudiante.store') }}" method="post">
        @endif
                @csrf
                <div class="col-md-4">
                    <label for="validationCodigo" class="form-label">Codigo estudiante</label>
                    <input type="text" name="alm_codigo" class="form-control" id="validationCodigo" value="{{old('alm_codigo') ?? @$item->alm_codigo}}" {{ isset($alm_codigo) ? 'disabled' : 'required' }} >
                    @error('alm_codigo')
                        <div class="form-text text-danger">{{$message}}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="validationNombre" class="form-label">Nombre estudiante</label>
                    <input type="text" name="alm_nombre" class="form-control" id="validationNombre" value="{{old('alm_nombre') ?? @$item->alm_nombre}}" required>
                    @error('alm_nombre')
                        <div class="form-text text-danger">{{$message}}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="validationEdad" class="form-label">Edad estudiante</label>
                    <div class="input-group has-validation">
                        <input type="text" name="alm_edad" class="form-control" id="validationEdad" value="{{old('alm_edad') ?? @$item->alm_edad}}" aria-describedby="inputGroupPrepend" required>
                        @error('alm_edad')
                            <div class="form-text text-danger">{{$message}}</div>
                        @enderror
                    </div>
                </div>

                <div class="mb-3">
                    <label for="validationObservacion" class="form-label">Observación</label>
                    <textarea name="alm_observacion" class="form-control" id="validationObservacion" value="{{old('alm_observacion') ?? @$item->alm_observacion}}" placeholder="Se requiere agregar su observación" required>{{old('alm_observacion') ?? @$item->alm_observacion}}</textarea>
                    @error('alm_observacion')
                        <div class="invalid-feedback">{{$message}}</div>
                    @enderror
                </div>
            
                <div class="mb-3">
                    <select name="alm_sexo" class="form-select" aria-label="select example" required>
                        <option value="0">Seleccionar sexo del estudiante</option>
                        <option {{old('alm_sexo', @$item->alm_sexo)=="F"? 'selected':''}} value="F">Mujer</option>
                        <option {{old('alm_sexo', @$item->alm_sexo)=="M"? 'selected':''}} value="M">Hombre</option>
                        <option {{old('alm_sexo', @$item->alm_sexo)=="O"? 'selected':''}} value="O">Otro</option>
                    </select>
                    @error('alm_sexo')
                        <div class="invalid-feedback">{{$message}}</div>
                    @enderror
                </div>
            
                <div class="mb-3">
                    @if (isset($alm_codigo))
                        <button class="btn btn-primary" type="submit">Editar</button>
                    @else
                        <button class="btn btn-primary" type="submit">Guardar</button>
                    @endif
                </div>
          </form>
    </div>
@endsection