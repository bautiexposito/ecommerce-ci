<?php

class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this ->load->helper("url");
    }

    public function index(){
        $this->load->view('admin/admin_home');
    }

    public function post_list() {
        $this->load->view("admin/post/list");
    }
}
