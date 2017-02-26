<?php
abstract class Logger
{
	protected $text;
	public  function log($message)
	{
		$this->text=date("[Y-m-D H:i:s]").serialize($message);
		
	}
	abstract  function write();
}
?>
