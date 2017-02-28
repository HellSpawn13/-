<?php
class ILogger extends Logger
{
protected   $resource;
	private function __construct($stock)//В stock попадает connect из Config..;
	{
		$this->resource=$stock;
	}
	public function write()
	{
		if(gettype($this->resource)=='object')
		{
			$bd=$this->resource->query("INSERT INTO `logger`(`LogMessage`) VALUES('$this->text')");
			
		}
		else
		{
			fputs($this->resource,  $this->text);
			
		}
	}
	public static function Create($stock)
	{
		return new ILogger($stock);
	}
}

?>
