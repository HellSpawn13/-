<?php

class FileConnect
{ 
	public static function get()
	{
		static $fileConnect=NULL;
		if($fileConnect==NULL)
		{
			$fileConnect=new FileConnect();
		}
		return $fileConnect;
	}
	protected $connect;
	private function __construct()
	{	
		if(!file_exists(Config::$path))
		{
		 	throw new Exception('Файла не существует!');
		}
		$this->connect=fopen(Config::$path,'a');
	}
	public function connect()
	{
		return $this->connect;
	}
}