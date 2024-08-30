@extends('layouts.app')

@section('content')
<div class="container " style="width:40%;">
        <h2>Create Student</h2>
        <form action="{{ route('students.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}">
                @error('name')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="class" class="form-label">Class</label>
                <input type="text" class="form-control" id="class_name" name="class_name" value="{{ old('class_name') }}">
                @error('class_name')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="admission_date" class="form-label">Admission Date</label>
                <input type="date" class="form-control" id="admission_date" name="admission_date" value="{{ old('admission_date') }}">
                @error('admission_date')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="teacher_id" class="form-label">Select Teacher</label>
                <select class="form-select" id="teacher_id" name="teacher_id">
                    <option value="" selected>Select a teacher</option>
                    @foreach ($teachers as $teacher)
                        <option value="{{ $teacher->id }}" {{ old('teacher_id') == $teacher->id ? 'selected' : '' }}>
                            {{ $teacher->name }} - {{ $teacher->subject }}
                        </option>
                    @endforeach
                </select>
                @error('teacher_id')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="yearly_fees" class="form-label">Yearly Fees</label>
                <input type="number" step="0.01" class="form-control" id="yearly_fees" name="yearly_fees" value="{{ old('yearly_fees') }}">
                @error('yearly_fees')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
   @endsection
