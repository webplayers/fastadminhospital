<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:101:"E:\wamp64\www\houtai\mobanadmin\fastadmin\public/../application/admin\view\peoples\peoples\index.html";i:1521603403;s:84:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\layout\default.html";i:1517242062;s:81:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\common\meta.html";i:1517242062;s:83:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\common\script.html";i:1517242062;}*/ ?>
<!DOCTYPE html>
<html lang="<?php echo $config['language']; ?>">
    <head>
        <meta charset="utf-8">
<title><?php echo (isset($title) && ($title !== '')?$title:''); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit">

<link rel="shortcut icon" href="/houtai/mobanadmin/fastadmin/public/assets/img/favicon.ico" />
<!-- Loading Bootstrap -->
<link href="/houtai/mobanadmin/fastadmin/public/assets/css/backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.css?v=<?php echo \think\Config::get('site.version'); ?>" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
  <script src="/houtai/mobanadmin/fastadmin/public/assets/js/html5shiv.js"></script>
  <script src="/houtai/mobanadmin/fastadmin/public/assets/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
    var require = {
        config:  <?php echo json_encode($config); ?>
    };
</script>
    </head>

    <body class="inside-header inside-aside <?php echo defined('IS_DIALOG') && IS_DIALOG ? 'is-dialog' : ''; ?>">
        <div id="main" role="main">
            <div class="tab-content tab-addtabs">
                <div id="content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <section class="content-header hide">
                                <h1>
                                    <?php echo __('Dashboard'); ?>
                                    <small><?php echo __('Control panel'); ?></small>
                                </h1>
                            </section>
                            <?php if(!IS_DIALOG): ?>
                            <!-- RIBBON -->
                            <div id="ribbon">
                                <ol class="breadcrumb pull-left">
                                    <li><a href="dashboard" class="addtabsit"><i class="fa fa-dashboard"></i> <?php echo __('Dashboard'); ?></a></li>
                                </ol>
                                <ol class="breadcrumb pull-right">
                                    <?php foreach($breadcrumb as $vo): ?>
                                    <li><a href="javascript:;" data-url="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a></li>
                                    <?php endforeach; ?>
                                </ol>
                            </div>
                            <!-- END RIBBON -->
                            <?php endif; ?>
                            <div class="content">
                                <style>
    .trees li {
        list-style-type: none;
        margin: 0;
        padding: 10px 5px 0 5px;
        position: relative
    }

    .trees li::before, .trees li::after {
        content: '';
        left: -20px;
        position: absolute;
        right: auto
    }

    .trees li::before {
        border-left: 1px solid #999;
        bottom: 50px;
        height: 100%;
        top: 0;
        width: 1px
    }

    .trees li::after {
        border-top: 1px solid #999;
        height: 20px;
        top: 25px;
        width: 25px
    }

    .trees li span {
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
        border: 1px solid #999;
        border-radius: 5px;
        display: inline-block;
        padding: 3px 8px;
        text-decoration: none
    }

    .trees li.parent_li > span {
        cursor: pointer
    }

    .trees > ul > li::before, .tree > ul > li::after {
        border: 0
    }

    .trees li:last-child::before {
        height: 30px
    }

    .trees li.parent_li > span:hover, .trees li.parent_li > span:hover + ul li span {
        background: #eee;
        border: 1px solid #94a0b4;
        color: #000
    }
</style>
<!--图标样式-->
<link rel="stylesheet" type="text/css" href="/houtai/mobanadmin/fastadmin/public/static/jquerytree/css/bootstrap.min.css"/>
<!--主要样式-->
<script type="text/javascript" src="/houtai/mobanadmin/fastadmin/public/static/jquerytree/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.trees li:has(ul)').addClass('parent_li').find(' > span');

//                var childrens = $('.trees li.parent_li > span').parent('li.parent_li').find(' > ul > li');
//                childrens.hide('fast');
//                $('.trees li.parent_li > span').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');

        $('.trees li.parent_li > span').on('click', function (e) {
            var children = $(this).parent('li.parent_li').find(' > ul > li');
            if (children.is(":visible")) {
                children.hide('fast');
                $(this).find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
            } else {
                children.show('fast');
                $(this).find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
            }
            e.stopPropagation();
        });
    });
</script>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-5">
            <div class="trees well">
                <ul>
                    <li>
                        <span><i class="icon-folder-open"></i>行政</span>
                        <ul>
                            <li>
                                <span><i class="icon-minus-sign"></i> 院长</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-minus-sign"></i> 院长办公室</span>
                                        <ul>
                                            <li>
                                                <span><i class="icon-leaf"></i> 业务院长</span>
                                                <span><i class="icon-leaf"></i> 后勤院长</span>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <span><i class="icon-leaf"></i> 副院长</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i> 档案室</span>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i> 党委</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i> 党委书记</span>
                                        <span><i class="icon-leaf"></i> 纪委书记</span>
                                        <span><i class="icon-leaf"></i> 党政办公室</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>团委办公室</span>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>宣传科</span>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>保卫科</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>停车管理</span>
                                        <span><i class="icon-leaf"></i>花草管理</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>医务处</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>科教科</span>
                                        <span><i class="icon-leaf"></i>医保办</span>
                                        <span><i class="icon-leaf"></i>保健科</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>护理部</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>护理部主任</span>
                                        <span><i class="icon-leaf"></i>外科总护士长</span>
                                        <span><i class="icon-leaf"></i>内科总护士长</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>工会</span>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>人事处</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>劳动工资科</span>
                                        <span><i class="icon-leaf"></i>组织科</span>
                                        <span><i class="icon-leaf"></i>职改办</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>信息科</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>病案统计科</span>
                                        <span><i class="icon-leaf"></i>图书馆</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i>财务处</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>门诊收费挂号</span>
                                        <span><i class="icon-leaf"></i>发放工资</span>
                                        <span><i class="icon-leaf"></i>报销</span>
                                        <span><i class="icon-leaf"></i>出入院处</span>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 后勤</span>
                        <ul>
                            <li>
                                <span><i class="icon-minus-sign"></i> 总务处</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i> 电工</span>
                                        <span><i class="icon-leaf"></i> 职工食堂</span>
                                    </li>
                                </ul>
                            <li>
                                <span><i class="icon-minus-sign"></i> 设备科</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i> 购买设备管理</span>
                                        <span><i class="icon-leaf"></i> 维修设备管理</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-leaf"></i> 基建科</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 医学辅助室</span>
                        <ul>
                            <li>
                                <span><i class="icon-minus-sign"></i> 功能医技科室</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>心电图</span>
                                        <span><i class="icon-leaf"></i>脑电图</span>
                                        <span><i class="icon-leaf"></i>B超</span>
                                        <span><i class="icon-leaf"></i>胃镜科</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i> 检验科</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>门诊检验</span>
                                        <span><i class="icon-leaf"></i>病房检验</span>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-leaf"></i> 病理科</span>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i> 影像学</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i>放射</span>
                                        <span><i class="icon-leaf"></i>CT</span>
                                        <span><i class="icon-leaf"></i>核医学</span>
                                    </li>
                                </ul>

                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 膳食营养科</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 病人食堂</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 门诊办公室</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i>门诊</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 急诊室</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 急症</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-leaf"></i> 住院部</span>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 外科</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 神经外科</span>
                                <span><i class="icon-leaf"></i> 甲乳外科</span>
                                <span><i class="icon-leaf"></i> 胸外科</span>
                                <span><i class="icon-leaf"></i> 心外科</span>
                                <span><i class="icon-leaf"></i> 肝胆外科</span>
                                <span><i class="icon-leaf"></i> 胃肠外科</span>
                                <span><i class="icon-leaf"></i> 泌尿外科</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 内科</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 皮肤科</span>
                                <span><i class="icon-leaf"></i> 血液科</span>
                                <span><i class="icon-leaf"></i> 消化内科</span>
                                <span><i class="icon-leaf"></i> 神经内科</span>
                                <span><i class="icon-leaf"></i> 肾内科</span>
                                <span><i class="icon-leaf"></i> 呼吸科</span>
                                <span><i class="icon-leaf"></i> 传染病科</span>
                                <span><i class="icon-leaf"></i> 肠道科</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 口腔科</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 口腔内科</span>
                                <span><i class="icon-leaf"></i> 口腔外科</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 五官科</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 耳鼻喉</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 眼科</span>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 妇产科</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 妇科</span>
                                <span><i class="icon-leaf"></i> 产科</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 儿科</span>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 肿瘤科中心</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 肿瘤放疗科</span>
                                <span><i class="icon-leaf"></i> 肿瘤化疗科</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 美容科</span>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 体检</span>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 骨科</span>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 中医科</span>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 传染病科</span>
                    </li>
                    <li>
                        <span><i class="icon-minus-sign"></i> 药剂科</span>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> 门诊药房</span>
                                <span><i class="icon-leaf"></i> 病房药房</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 中心供应室</span>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> 手术室</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-7">
            <!-- /.box -->
            <div class="box box-info">
                <div class="box-header">
                    <h3 class="box-title">全院人员类别职称汇总</h3>
                    <a style="float: right" href="<?php echo url('index/daochu/gangweixinxidaochu'); ?>" type="button" class="btn btn-info btn-flat">原样导出</a>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover" border="2" rules="all">
                        <tbody style="text-align: center">
                        <tr>
                            <th rowspan="2" style="text-align: center">人员级别</th>
                            <th colspan="8" style="text-align: center">职称</th>
                            <th rowspan="2" style="text-align: center">合计</th>
                        </tr>
                        <tr>
                            <td style="text-align: center">正高二级</td>
                            <td style="text-align: center">正高三级</td>
                            <td style="text-align: center">正高</td>
                            <td style="text-align: center">副高</td>
                            <td style="text-align: center">中级</td>
                            <td style="text-align: center">初级(士)</td>
                            <td style="text-align: center">初级(师)</td>
                            <td style="text-align: center">未定级</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">正式工</td>
                            <td style="text-align:center">22</td>
                            <td style="text-align:center">12</td>
                            <td style="text-align:center">75</td>
                            <td style="text-align:center">147</td>
                            <td style="text-align:center">248</td>
                            <td style="text-align:center">21</td>
                            <td style="text-align:center">236</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">761</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">聘用人员</td>
                            <td style="text-align:center">4</td>
                            <td style="text-align:center">23</td>
                            <td style="text-align:center">65</td>
                            <td style="text-align:center">123</td>
                            <td style="text-align:center">432</td>
                            <td style="text-align:center">121</td>
                            <td style="text-align:center">234</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">1002</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">返聘人员</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">21</td>
                            <td style="text-align:center">23</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">44</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">本院规培学院</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">32</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">32</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">委培人员</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">0</td>
                            <td style="text-align:center">12</td>
                            <td style="text-align:center">23</td>
                            <td style="text-align:center">5</td>
                            <td style="text-align:center">34</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">合计</td>
                            <td style="text-align:center">26</td>
                            <td style="text-align:center">35</td>
                            <td style="text-align:center">140</td>
                            <td style="text-align:center">270</td>
                            <td style="text-align:center">680</td>
                            <td style="text-align:center">175</td>
                            <td style="text-align:center">548</td>
                            <td style="text-align:center">5</td>
                            <td style="text-align:center">1873</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title">图形列表</h3>
                </div>
                <div class="box-body">
                    <div class="chart">
                        <ul class="chart-legend clearfix">
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#3A5FCD;"></i> 正高二级</li>&nbsp;
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#3CB371;"></i> 正高三级</li>&nbsp;
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#CD853F;"></i> 正高</li>&nbsp;
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#CD3700;"></i> 副高</li>&nbsp;
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#836FFF;"></i> 中级</li>&nbsp;
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#7CCD7C;"></i> 初级(士)</li>&nbsp;
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#388E8E;"></i> 初级(师)</li>&nbsp;
                            <li style="float: left">&nbsp;<i class="fa fa-square" style="color:#EE3B3B;"></i> 未定级</li>
                        </ul>
                        <canvas id="barChart" ></canvas>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>
<!-- /.content -->
</div>
<script src="/houtai/mobanadmin/fastadmin/public/static/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/houtai/mobanadmin/fastadmin/public/static/bower_components/chart.js/Chart.js"></script>
<script>
    $(function () {
        var areaChartData = {
            labels  : ['正式工', '聘用人员', '返聘人员', '本院规培学员', '委培人员'],
            datasets: [
                {
                    fillColor           : '#3A5FCD',
                    strokeColor         : '#3A5FCD',
                    pointColor          : '#3A5FCD',
                    pointStrokeColor    : '#3A5FCD',
                    pointHighlightFill  : '#3A5FCD',
                    pointHighlightStroke: '#3A5FCD',
                    data                : [22, 4, 0, 0, 0]
                },
                {
                    fillColor           : '#3CB371',
                    strokeColor         : '#3CB371',
                    pointColor          : '#3CB371',
                    pointStrokeColor    : '#3CB371',
                    pointHighlightFill  : '#3CB371',
                    pointHighlightStroke: '#3CB371',
                    data                : [12, 23 ,0, 0, 0]
                },
                {
                    fillColor           : '#CD853F',
                    strokeColor         : '#CD853F',
                    pointColor          : '#CD853F',
                    pointStrokeColor    : '#CD853F',
                    pointHighlightFill  : '#CD853F',
                    pointHighlightStroke: '#CD853F',
                    data                : [75, 65, 0, 0, 0]
                },
                {
                    fillColor           : '#CD3700',
                    strokeColor         : '#CD3700',
                    pointColor          : '#CD3700',
                    pointStrokeColor    : '#CD3700',
                    pointHighlightFill  : '#CD3700',
                    pointHighlightStroke: 'rgba(60,141,188,1)',
                    data                : [147, 123, 0, 0, 0]
                },
                {
                    fillColor           : '#836FFF',
                    strokeColor         : '#836FFF',
                    pointColor          : '#836FFF',
                    pointStrokeColor    : '#836FFF',
                    pointHighlightFill  : '#836FFF',
                    pointHighlightStroke: '#836FFF',
                    data                : [248, 432, 40, 19, 86]
                },
                {
                    fillColor           : '#7CCD7C',
                    strokeColor         : '#7CCD7C',
                    pointColor          : '#7CCD7C',
                    pointStrokeColor    : '#7CCD7C',
                    pointHighlightFill  : '#7CCD7C',
                    pointHighlightStroke: '#7CCD7C',
                    data                : [21, 121, 21, 0, 12]
                },
                {
                    fillColor           : '#388E8E',
                    strokeColor         : '#388E8E',
                    pointColor          : '#388E8E',
                    pointStrokeColor    : '#388E8E',
                    pointHighlightFill  : '#388E8E',
                    pointHighlightStroke: '#388E8E',
                    data                : [236, 234, 23, 32, 23]
                },
                {
                    fillColor           : '#EE3B3B',
                    strokeColor         : '#EE3B3B',
                    pointColor          : '#EE3B3B',
                    pointStrokeColor    : '#EE3B3B',
                    pointHighlightFill  : '#EE3B3B',
                    pointHighlightStroke: '#EE3B3B',
                    data                : [0, 0, 0, 0, 5]
                }
            ]
        };
        //-------------
        var barChartCanvas = document.getElementById("barChart").getContext("2d");
        var barChart                         = new Chart(barChartCanvas);
        var barChartData                     = areaChartData;
        barChartData.datasets[1].fillColor   = '#00a65a';
        barChartData.datasets[1].strokeColor = '#00a65a';
        barChartData.datasets[1].pointColor  = '#00a65a';
        var barChartOptions                  = {
            //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
            scaleBeginAtZero        : true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines      : true,
            //String - Colour of the grid lines
            scaleGridLineColor      : 'rgba(0,0,0,.05)',
            //Number - Width of the grid lines
            scaleGridLineWidth      : 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines: true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines  : true,
            //Boolean - If there is a stroke on each bar
            barShowStroke           : true,
            //Number - Pixel width of the bar stroke
            barStrokeWidth          : 2,
            //Number - Spacing between each of the X value sets
            barValueSpacing         : 5,
            //Number - Spacing between data sets within X values
            barDatasetSpacing       : 1,
            //Boolean - whether to make the chart responsive
            responsive              : true,
            maintainAspectRatio     : true
        };

        barChartOptions.datasetFill = false
        barChart.Bar(barChartData, barChartOptions)
    })
</script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/houtai/mobanadmin/fastadmin/public/assets/js/require.js" data-main="/houtai/mobanadmin/fastadmin/public/assets/js/require-backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo $site['version']; ?>"></script>
    </body>
</html>