<?php

class UserController extends BaseController {

	public function index()
	{
		$currentPage = Input::get('page') - 1;
		$pageSize = Input::get('per_page');
		$users = User::skip($currentPage*$pageSize)->take($pageSize)->get()->toArray();
		$state = array('total_entries' => User::count());
		return Response::json(array($state, $users));
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