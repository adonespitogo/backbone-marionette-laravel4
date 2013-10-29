<?php

class UserController extends BaseController {

	public function index()
	{
		return Response::json(User::all()->toArray());
	}

	public function store(){
		$user = new User();
		$user->first_name = Input::get('first_name');
		$user->last_name = Input::get('last_name');
		$user->username = Input::get('username');
		$user->save();
		return Response::json($user->toArray());
	}

	public function update($id)
	{
		// return Response::make(null, '500');
		$user = User::find($id);
		$user->username = Input::get('username');
		$user->first_name = Input::get('first_name');
		$user->last_name = Input::get('last_name');
		$user->save();

		sleep(3);

		return Response::json($user->toArray());
	}

	public function show($id){
		$user = User::find($id);
		return Response::json($user->toArray());
	}

	public function destroy($id)
	{
		User::where('id', $id)->limit(1)->delete();
	}

}