<?php

class Events_model extends CIF_model
{
    function __construct() {
parent::__construct();
}
    
    public $_table = 'events';
   public $_primary_keys = array('event_id');
    
    public function record_count() {
        return $this->db->count_all("events");
    }

    public function fetch_events($limit, $start) {
        $this->db->limit($limit, $start);
        $query = $this->db->get("events");

        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
   }
}
// Count all record of table "contact_info" in database.