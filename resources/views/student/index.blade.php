@extends('layouts.app')

@section('content')
<style>
    
</style>
<div class="container mt-5">
        <h2>Students Table</h2>
        <div class="d-flex justify-content-end mb-3">
        <form method="GET" action="{{ route('students.index') }}" class="mb-3">
            <div class="input-group">
                <input type="text" name="search" value="{{ request('search') }}" class="form-control" placeholder="Search by name...">
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </form>

        <!-- <div class="d-flex justify-content-end mb-3">
        <input type="text" id="search" class="form-control" placeholder="Search by name..." value="{{ request('search') }}">
    </div> -->
        </div>
        <div class="d-flex justify-content-end mb-3">
        
        <a href="{{ route('students.create') }}" class="btn btn-primary">Add Student</a>
    </div>
        @if (session('success'))
            <div class="alert alert-success" id="success-msg">{{ session('success') }}</div>
        @endif
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th class="d-none d-md-table-cell">#</th>
                        <th class="d-none d-md-table-cell">Student Name</th>
                        <th class="d-none d-md-table-cell">Class Name</th>
                        <th class="d-none d-md-table-cell">Teacher Name</th>
                        <th class="d-none d-md-table-cell">Subject</th>
                        <th class="d-none d-md-table-cell">Admission Date</th>
                        <th class="d-none d-md-table-cell">Yearly Fees</th>
                        <th class="d-none d-md-table-cell">Created At</th>
                        <th class="d-none d-md-table-cell">Action</th>
                    </tr>
                </thead>
                <tbody>
                @foreach ($students as $index => $student)
                
                    <tr>
                    <td>{{ $index + 1 }}</td>
                        <td>{{ $student->name }}</td>
                        <td>{{ $student->class_name }}</td>
                        <td>{{ $student->teacher->name }}</td>
                        <td>{{ $student->teacher->subject }}</td>
                        <td>{{ $student->admission_date }}</td>
                        <td>${{ $student->yearly_fees }}</td>
                        <td>{{ $student->created_at }}</td>
                        
                        <td style="width: 16%;">
                        @if($student->trashed())
                        <form action="{{ route('students.restore', $student->id) }}" method="POST" style="display:inline;">
                            @csrf
                            <button type="submit" class="btn btn-warning btn-sm">Restore</button>
                        </form>
                    @else
                        <a href="{{ route('students.show', $student->id) }}" class="btn btn-info btn-sm">View</a>
                        <a href="{{ route('students.edit', $student->id) }}" class="btn btn-warning btn-sm">Edit</a>
                        <form id="delete-form" action="{{ route('students.destroy', $student->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                    @endif
                        </td>
                    </tr>
                    @endforeach
                   
                </tbody>
            </table>

            <div class="d-flex justify-content-between">
            {{ $students->links('pagination::bootstrap-5') }}
        </div>
        </div>
    </div>

    @push('scripts')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#search').on('keyup', function() {
            let query = $(this).val();
            $.ajax({
                url: "{{ route('students.index') }}",
                type: "GET",
                data: {
                    search: query
                },
                success: function(data) {
                    $('#student-table-body').html(data.html);
                    $('#pagination-links').html(data.pagination);
                }
            });
        });
    });
</script>

@endpush
@endsection
