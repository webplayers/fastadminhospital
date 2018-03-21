<?php

namespace app\admin\controller\recruit;

use app\common\controller\Backend;

class Recruit extends Backend
{

    protected $relationSearch = true;
    public function index()
    {
        return $this->view->fetch();
    }
}
