<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Students;
use App\Models\Teachers;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->query('search');

        // Query students with optional search filter and include trashed records if needed
        $students = Students::with('teacher')
            ->when($search, function ($query, $search) {
                return $query->where('name', 'like', "%{$search}%");
            })
            ->paginate(10);

        return view('student.index', compact('students'));
    }

    public function create()
    {
        $teachers = Teachers::all();
        return view('student.create', compact('teachers'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'class_name' => 'required|string|max:255',
            'admission_date' => 'required|date',
            'teacher_id' => 'required|exists:teachers,id',
            'yearly_fees' => 'required|numeric|min:0',
            
        ]);

        Students::create($request->all());
        return redirect()->route('students.index')->with('success', 'Student created successfully.');
    }

    public function show(Students $student)
    {
        return view('student.show', compact('student'));
    }

    public function edit(Students $student)
    {
        $teachers = Teachers::all();
        return view('student.edit', compact('teachers','student'));
    }

    public function update(Request $request, Students $student)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'class_name' => 'required|string|max:255',
            'admission_date' => 'required|date',
            'teacher_id' => 'required|exists:teachers,id',
            'yearly_fees' => 'required|numeric|min:0',
        ]);

        $student->update($request->all());
        return redirect()->route('students.index')->with('success', 'Student updated successfully.');
    }

    public function destroy(Students $student)
    {
        $student->delete();
        return redirect()->route('students.index')->with('success', 'Student deleted successfully.');
    }

    // Restore a soft-deleted resource
    public function restore($id)
    {
        $student = Students::withTrashed()->find($id);

        if ($student) {
            $student->restore();
            return redirect()->route('students.index')->with('success', 'Student restored successfully.');
        }

        return redirect()->route('students.index')->with('error', 'Student not found.');
    }
}
