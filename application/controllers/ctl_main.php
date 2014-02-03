<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ctl_main extends CI_Controller {
	public function __construct(){
		parent::__construct();
	}

	//index page
	public function index(){
		$this->load->view("index");
	}
}

?>