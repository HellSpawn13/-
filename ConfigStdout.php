<?php
class StdoutConnect
{ 
	public static function get()
	{
		static $stdoutConnect=NULL;
		if($stdoutConnect==NULL)
		{
			$stdoutConnect=new StdoutConnect();
		}
		return $stdoutConnect;
	}
	protected $connect;
	private function __construct()
	{	
		$this->connect=fopen(Config::$stream, 'r+');	
	}
	public function connect()
	{
		return $this->connect;
	}
}