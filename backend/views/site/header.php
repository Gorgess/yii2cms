<?php
use yii\helpers\Url;
?>
<div class="layui-header blog-header header height-50">
	<div class="layui-main">
		<div class="header-logo">
			<a href="#" class="logo">MeiguiHua</a>
			<!-- 显示/隐藏菜单 -->
			<a href="javascript:;" class="menu_header iconfont hideMenu icon-menufold "></a>
		</div>
		<div class="header-menu">
			<!-- 顶部右侧菜单 -->
			<ul class="layui-nav top_menu">
				<li class="layui-nav-item line-h50 showNotice" id="showNotice">
					<a href="javascript:;">
						<i class="iconfont icon-gonggao"></i>
						<cite>公告</cite>
					</a>
				</li>
				<li class="layui-nav-item line-h50 lockcms">
					<a href="javascript:;">
						<i class="iconfont icon-lock"></i>
						<cite>锁屏</cite>
					</a>
				</li>
				<li class="layui-nav-item line-h50">
					<a href="javascript:;">
						<img src="<?=Yii::$app->user->identity->head_pic?>" class="layui-circle header_user_head_pic" width="30" height="30">
						<cite class="header_user_name user-menu"><?=Yii::$app->user->identity->nickname?></cite>
					</a>
					<dl class="layui-nav-child top-50">
						<dd><a href="javascript:;" class="changeSkin"><i class="iconfont icon-yifu userMenu"></i><cite>换肤</cite></a></dd>
						<dd><a href="<?= Url::to(['rbac/user/update-self','id'=>Yii::$app->user->identity->id])?>" class="userInfo"><i class="iconfont icon-wo userMenu" data-icon="icon-wo"></i><cite>资料</cite></a></dd>
						<dd><a href="<?= Url::to(['rbac/user/logout'])?>" class="signOut yii2-post-logout"><i class="iconfont icon-logout userMenu"></i><cite>退出</cite></a></dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>
</div>
