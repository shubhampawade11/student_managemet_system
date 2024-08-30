<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
class TeachersTableSeeder extends Seeder
{
    // public function run()
    // {
    //     DB::table('teachers')->insert([
    //         [
    //             'name' => 'John Doe',
    //             'email' => 'john.doe@example.com',
    //             'subject' => 'Mathematics',
    //             'created_at' => now(),
    //             'updated_at' => now(),
    //         ],
    //         [
    //             'name' => 'Jane Smith',
    //             'email' => 'jane.smith@example.com',
    //             'subject' => 'English',
    //             'created_at' => now(),
    //             'updated_at' => now(),
    //         ],
    //         // Add more teachers as needed
    //     ]);
    // }

    public function run(): void
    {
        $faker = Faker::create();

        // Generate fake data
        $teachers = [];
        for ($i = 0; $i < 10; $i++) { 
            $teachers[] = [
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'subject' => $faker->word, 
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

      
        DB::table('teachers')->insert($teachers);
    }
}
