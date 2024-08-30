<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

use Faker\Factory as Faker;
class StudentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    // public function run(): void
    // {
    //     DB::table('students')->insert([
    //         [
    //             'name' => 'Alice Johnson',
    //             'class_name' => '10th Grade',
    //             'admission_date' => '2023-09-01',
    //             'yearly_fees' => 1500.00,
    //             'teacher_id' => 1, // Assuming teacher with ID 1 exists
    //             'created_at' => now(),
    //             'updated_at' => now(),
    //         ],
    //         [
    //             'name' => 'Bob Brown',
    //             'class_name' => '9th Grade',
    //             'admission_date' => '2023-09-01',
    //             'yearly_fees' => 1400.00,
    //             'teacher_id' => 2, // Assuming teacher with ID 2 exists
    //             'created_at' => now(),
    //             'updated_at' => now(),
    //         ],
    //         // Add more students as needed
    //     ]);
    // }

    public function run(): void
    {
        $faker = Faker::create();

        // Generate fake data
        $students = [];
        for ($i = 0; $i < 20; $i++) { 
            $students[] = [
                'name' => $faker->name,
                'class_name' => $faker->word . ' Grade', 
                'admission_date' => $faker->date('Y-m-d', '2024-12-31'),
                'yearly_fees' => $faker->randomFloat(2, 1000, 2000), 
                'teacher_id' => $faker->numberBetween(1, 10), 
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

        // Insert the fake data into the 'students' table
        DB::table('students')->insert($students);
    }
}
