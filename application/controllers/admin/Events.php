<?php

class Events extends CIF_Controller {

    public $layout = 'full';
    public $module = 'events';
    public $model = 'Events_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
    }

    public function index() {
       $data['items'] = $this->{$this->model}->get();
        $this->load->view($this->module . '/index', $data);
        
    }

    public function manage($id = FALSE) {
        $data = array();

        if ($id) {
            $this->{$this->model}->{$this->_primary_key} = $id;
            $data['item'] = $this->{$this->model}->get();
            if (!$data['item'])
                show_404();
        } else {
            $data['item'] = new Std();
            $this->{$this->model}->datetime = date('Y-m-d H:i:s');
            $this->{$this->model}->date = date('Y-m-d H:i:s');
        }
        $this->load->library("form_validation");
        $this->form_validation->set_rules('title', 'Title', 'trim|required');
        $this->form_validation->set_rules('description', 'description', 'trim|required');
        $this->form_validation->set_rules('date','date','trim|required');
         $this->form_validation->set_rules('place','place','trim|required');
         $this->form_validation->set_rules("image", 'Image', "trim|callback_file[$id]");
           $this->form_validation->set_rules('short', 'Meta Description', '');
          $this->form_validation->set_rules('keyword', 'Meta Keywords', '');

        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {
            $this->{$this->model}->title = $this->input->post('title');
            $this->{$this->model}->description = $this->input->post('description');
            $this->{$this->model}->date = $this->input->post('date');
             $this->{$this->model}->place = $this->input->post('place');
              $this->{$this->model}->short = $this->input->post('short');
            $this->{$this->model}->keyword = $this->input->post('keyword');
            $this->{$this->model}->save();
            redirect('admin/' . $this->module);
        }
    }

    public function delete($id = false) {
        if (!$id)
            show_404();
        $this->{$this->model}->{$this->_primary_key} = $id;
        $data['item'] = $this->{$this->model}->get();
        if (!$data['item'])
            show_404();
        $this->{$this->model}->delete();
        redirect('admin/' . $this->module);
    }

    public function file($var, $id) {
        $config['upload_path'] = './cdn/event/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if ($this->upload->do_upload('image')) {
            $data = $this->upload->data();
            if ($data['file_name'])
                $this->{$this->model}->image = base_url() . '/cdn/event/' . $data['file_name'];
        }
        return true;
    }

}
