<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class EmployeeController extends Controller
{
  
    
     public function login()
    {
        return view('Employee.login');
    }
    
    
    public function check(Request $request )
    {

          $request->validate([
            'email' => 'required|max:255',
        'password' => 'required',
            ]);
        
        $emp = $request->only('email' , 'password');
            

      if (Auth::guard('Employee')->attempt($emp)){
       return redirect("/home");
          
      }
        else{
        return redirect('/home/login');
        }
    
    }
    
    
    public function add_employee()
    {
        return view('Employee.add_employee');
    }
    public function store_employee(Request $request){
          $data=$request->validate([
            'email' => 'required|max:191',
            'password' =>'required|string',
              'job'=>'required|string',
            ]);
        $count = Employee::get();
        $count = $count->count();
        $count++;
        $sum=$request['email'].$count."@factory";
        $em=new Employee();
        $em->name=$request['email'];
        $em->email=$sum;
        $em->password=Hash::make($request['password']);
        $em->job_tittle=$request['job'];
        $em->factory_id="fact";
        $em->save();
       return redirect("/home");

    }
    
    
    
    public function logout(Request $request)
    {
        Auth::guard('Employee')->logout();
       $request->session()->invalidate();

    $request->session()->regenerateToken();

        return redirect('/home/login');
    }

    
    
    public function create()
    {
        //
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
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(Employee $employee)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee)
    {
        //
    }
}
