<?php

class Request extends CIF_Controller {

    public $layout = 'full';
    public $module = 'request';
    public $model = 'Request_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }
  public function index() {
        $data['items'] = $this->{$this->model}->get();
        $this->load->view($this->module, $data);
    }
    public function create() {
        
         $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('message', 'Message', 'trim|required');
        $data['success'] = false;

         if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module);

        else {
            $this->{$this->model}->email = $this->input->post('email');
            $this->{$this->model}->message= $this->input->post('message');
            $this->{$this->model}->save();
             
           @mail(config('webmaster_email'), 'Prayer Request from Website', ""
                            . "Request: $_POST[message]\n"
                            . "Email:  $_POST[email]\n"
                            . "");
                            
                          echo "<script>
alert('Prayer Request Sent successfully!');
window.location.href='" . base_url() . "request';
</script>";
        }
        
    }
    
   
}
