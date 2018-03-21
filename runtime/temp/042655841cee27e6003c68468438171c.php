<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:91:"E:\wamp64\www\houtai\mobanadmin\fastadmin\public/../application/admin\view\index\index.html";i:1521513746;s:81:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\common\meta.html";i:1517242062;s:83:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\common\header.html";i:1521518464;s:81:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\common\menu.html";i:1521530524;s:84:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\common\control.html";i:1521513276;s:83:"E:\wamp64\www\houtai\mobanadmin\fastadmin\application\admin\view\common\script.html";i:1517242062;}*/ ?>
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
    <body class="hold-transition skin-green sidebar-mini fixed" id="tabs">
        <div class="wrapper">

            <header id="header" class="main-header">
                <!-- Logo -->
<a href="javascript:;" class="logo">
    <!-- 迷你模式下Logo的大小为50X50 -->
    <span class="logo-mini"><?php echo mb_strtoupper(mb_substr($site['name'],0,4,'utf-8'),'utf-8'); ?></span>
    <!-- 普通模式下Logo -->
    <span class="logo-lg"><b><?php echo mb_substr($site['name'],0,4,'utf-8'); ?></b><?php echo mb_substr($site['name'],4,null,'utf-8'); ?></span>
</a>
<!-- 顶部通栏样式 -->
<nav class="navbar navbar-static-top">
    <!-- 边栏切换按钮-->
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only"><?php echo __('Toggle navigation'); ?></span>
    </a>

    <div id="nav" class="pull-left">
        <!--如果不想在顶部显示角标,则给ul加上disable-top-badge类即可-->
        <ul class="nav nav-tabs nav-addtabs disable-top-badge" role="tablist">
        </ul>
    </div>

    <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
            <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bell-o"></i>
                    <span class="label label-warning"></span>
                </a>
                <ul class="dropdown-menu">
                    <li class="header"><?php echo __('Latest news'); ?></li>
                    <li>
                        <!-- FastAdmin最新更新信息,你可以替换成你自己站点的信息,请注意修改public/assets/js/backend/index.js文件 -->
                        <ul class="menu">

                        </ul>
                    </li>
                    <li class="footer"><a href="#" target="_blank"><?php echo __('View more'); ?></a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="wipecache" title="<?php echo __('Wipe cache'); ?>">
                    <i class="fa fa-trash"></i>
                </a>
            </li>
            <li class="hidden-xs">
                <a href="#" data-toggle="fullscreen"><i class="fa fa-arrows-alt"></i></a>
            </li>

            <!-- 账号信息下拉框 -->
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="/houtai/mobanadmin/fastadmin/public<?php echo $admin['avatar']; ?>" class="user-image" alt="<?php echo $admin['nickname']; ?>">
                    <span class="hidden-xs"><?php echo $admin['nickname']; ?></span>
                </a>
                <ul class="dropdown-menu">
                    <!-- User image -->
                    <li class="user-header">
                        <img src="/houtai/mobanadmin/fastadmin/public<?php echo $admin['avatar']; ?>" class="img-circle" alt="">

                        <p>
                            <?php echo $admin['nickname']; ?>
                            <small><?php echo date("Y-m-d H:i:s",$admin['logintime']); ?></small>
                        </p>
                    </li>
                    <!-- Menu Footer-->
                    <li class="user-footer">
                        <div class="pull-left">
                            <a href="general/profile" class="btn btn-primary addtabsit"><i class="fa fa-user"></i> <?php echo __('Profile'); ?></a>
                        </div>
                        <div class="pull-right">
                            <a href="<?php echo url('index/logout'); ?>" class="btn btn-danger"><i class="fa fa-sign-out"></i> <?php echo __('Logout'); ?></a>
                        </div>
                    </li>
                </ul>
            </li>
            <!-- 控制栏切换按钮 -->
            <li>
                <a href="javascript:;" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
            </li>
        </ul>
    </div>
</nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel hidden-xs">
        <div class="pull-left image">
            <a href="general/profile" class="addtabsit"><img src="/houtai/mobanadmin/fastadmin/public<?php echo $admin['avatar']; ?>" class="img-circle" /></a>
        </div>
        <div class="pull-left info">
            <p><?php echo $admin['nickname']; ?></p>
            <i class="fa fa-circle text-success"></i> <?php echo __('Online'); ?>
        </div>
    </div>

    <!-- search form -->
    <form action="" method="get" class="sidebar-form" onsubmit="return false;">
        <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="<?php echo __('Search menu'); ?>">
            <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
            </span>
            <div class="menuresult list-group sidebar-form hide">
            </div>
        </div>
    </form>
    <!-- /.search form -->

    <!-- sidebar menu: : style can be found in sidebar.less -->
    <!--如果想始终显示子菜单,则给ul加上show-submenu类即可-->
    <ul class="sidebar-menu">
        <?php echo $menulist; ?>
        <li class="header"><?php echo __('Links'); ?></li>
        <li><a href="#" target="_blank"><i class="fa fa-list text-red"></i> <span>关于我们</span></a></li>
        <li><a href="#" target="_blank"><i class="fa fa-comment text-yellow"></i> <span>联系开发人员</span></a></li>
    </ul>
</section>
<!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper tab-content tab-addtabs">

            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer hide">
                <div class="pull-right hidden-xs">
                </div>
                <strong>Copyright &copy; 2017-2018 <a href="https://www.goliebao.com/">创鑫互联通信技术有限公司</a>.</strong> All rights
                reserved.
            </footer>

            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
            <style>
    .skin-list li{
        float:left; width: 33.33333%; padding: 5px;
    }
    .skin-list li a{
        display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4);
    }
</style>
<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
        <li class="active"><a href="#control-sidebar-setting-tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-wrench"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
        <!-- Home tab content -->
        <div class="tab-pane active" id="control-sidebar-setting-tab">
            <h4 class="control-sidebar-heading"><?php echo __('Skins'); ?></h4>
            <ul class="list-unstyled clearfix skin-list">
                <li><a href="javascript:;" data-skin="skin-blue" style="" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Blue</p></li>
                <li><a href="javascript:;" data-skin="skin-white" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">White</p></li>
                <li><a href="javascript:;" data-skin="skin-purple" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Purple</p></li>
                <li><a href="javascript:;" data-skin="skin-green" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Green</p></li>
                <li><a href="javascript:;" data-skin="skin-red" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Red</p></li>
                <li><a href="javascript:;" data-skin="skin-yellow" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Yellow</p></li>
                <li><a href="javascript:;" data-skin="skin-blue-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Blue Light</p></li>
                <li><a href="javascript:;" data-skin="skin-white-light" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">White Light</p></li>
                <li><a href="javascript:;" data-skin="skin-purple-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Purple Light</p></li>
                <li><a href="javascript:;" data-skin="skin-green-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Green Light</p></li>
                <li><a href="javascript:;" data-skin="skin-red-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Red Light</p></li>
                <li><a href="javascript:;" data-skin="skin-yellow-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p></li>
            </ul>
        </div>
    </div>
</aside>
<!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->
        <!-- end main content -->
        <script src="/houtai/mobanadmin/fastadmin/public/assets/js/require.js" data-main="/houtai/mobanadmin/fastadmin/public/assets/js/require-backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo $site['version']; ?>"></script>
    </body>
</html>