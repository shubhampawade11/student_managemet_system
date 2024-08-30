@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        <h2>Student Details</h2>
        <div class="mb-3">
            <strong>Name:</strong> {{ $student->name }}
        </div>
        <div class="mb-3">
            <strong>Class:</strong> {{ $student->class_name }}
        </div>
        <div class="mb-3">
            <strong>Admission Date:</strong> {{ $student->admission_date }}
        </div>
        <div class="mb-3">
            <strong>Yearly Fees:</strong> ${{ $student->yearly_fees }}
        </div>
        <a href="{{ route('students.index') }}" class="btn btn-secondary">Back to List</a>
    </div>
   @endsection
