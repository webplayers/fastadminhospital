<?php

namespace app\admin\controller;

use app\common\controller\Backend;

/**
 * 考勤
 *
 * @icon fa fa-dashboard
 * @remark 用于展示当前系统中的统计数据、统计报表及重要实时数据
 */
class Kaoqing extends Backend
{
    /**
     * 查看
     */
    public function index()
    {
        return $this->view->fetch();
    }
    public function attendance()
    {
        return $this->view->fetch('attendance');
    }
}
