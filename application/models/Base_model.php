<?php
/**
 * Created by PhpStorm.
 * User: peterzhang
 * Date: 2020/9/20
 * Time: 11:01 AM
 */
class Base_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		// Your own constructor code
		$this->load->database();
	}
}
