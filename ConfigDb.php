<?php
class DbConnect
{ 
	public static function get()
	{
		static $dbConnect=NULL;
		if($dbConnect==NULL)
		{
				$dbConnect=new DbConnect();
		}
		return $dbConnect;
	}
	protected $connect;//Подключение к базе данных
	private function __construct()
	{
		$this->connect = new mysqli(Config::$dbhost, Config::$dbuser, Config::$dbpasswd, Config::$dbname);
		if ($this->connect->connect_error)
		{
    		throw new Exception("Не удалось подключиться: %s\n", $this->connect->connect_error);
		}
	}
	public function connect()
	{
		return $this->connect;
	}
}
?>