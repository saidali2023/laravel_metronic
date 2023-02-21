<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Hash;

use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
class CreateAdminUserSeeder extends Seeder
{
    
    public function run()
    {
        $user = User::create([
            'first_name'        => 'admin', 
            'last_name'         => 'admin', 
            'email'             => 'admin@admin.com',
            'password'          => Hash::make('admin'),
            'email_verified_at' => now(),
            'api_token'         => Hash::make('admin@admin'),
        ]);
        
        $role = Role::create(['name' => 'Admin']);
       
        $permissions = Permission::pluck('id','id')->all();
     
        $role->syncPermissions($permissions);
       
        $user->assignRole([$role->id]);
    }
}
