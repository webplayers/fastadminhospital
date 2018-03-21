<?php

namespace app\admin\controller\peoples;

use app\common\controller\Backend;

class Peoples extends Backend
{

    protected $relationSearch = true;
    public function index()
    {
        return $this->view->fetch();
    }
}
