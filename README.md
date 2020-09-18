# rhinoceros-questionnaire-api
rhinoceros-questionnaire-api

## 犀牛问卷调查系统 API

适用于 犀牛问卷调查系统 的后端接口

## 数据库

导入根目录中的 `questionnaire.sql` 文件即可

数据库配置文件 `/config/database.php` ，修改相应参数即可，本代码中因使用 Docker 部署，故使用了环境变量作为 `host`，如果非 Docker 环境，可以自行更改为 `localhost` 或 `127.0.0.1`

## 伪静态

Apache 环境下需要使用到根目录中的 `.htaccess` 文件

Nginx 环境下需要在 `vhost.conf` 文件中配置伪静态规则

```
location / {
    # something ...
    # Codeigniter Nginx Rewrite
	if (!-e $request_filename) {
    	rewrite ^/index.php(.*)$ /index.php?s=$1 last;
     	rewrite ^(.*)$ /index.php?s=$1 last;
     	break;
	}
  }
``` 

## Docker 部署

- Nginx 配置： `/vhost.conf`
- nginx Dockerfile：`/web.dockerfile` 
- php Dockerfile：`/app.dockerfile` 
- docker-compose 配置：`/docker-compose.yml`

一键部署 php 7.1 + mysql 5.6 + nginx 的命令

```bash
docker-compose up -d
```

> 重构

## 鼓励

<table border="0">
	<tbody>
		<tr>
			<td align="center" valign="middle">
				<a href="https://url.cn/5jVTRwI" target="_blank">
					<!--<img height="120" src="https://wx4.sinaimg.cn/mw690/46b94231ly1ge0pvo2necj209l05kq3c.jpg">-->
					<img height="120" src="https://ride-group.gitee.io/amapjava/images/tencent.jpeg">
				</a>
			</td>
			<td align="right" valign="middle">
				<!--<img height="120" src="https://wx2.sinaimg.cn/mw690/46b94231ly1ge0po9ko70j20fk0fkjsc.jpg">-->
				<img height="120" src="https://ride-group.gitee.io/amapjava/images/fenxiang.jpeg">
			</td>
			<td align="center" valign="middle">
				<a href="https://www.vultr.com/?ref=8546025-6G" target="_blank">
					<!--<img height="120" src="https://wx3.sinaimg.cn/mw1024/46b94231ly1ge0p76k64bj206o06owev.jpg">-->
					<img height="120" src="https://ride-group.gitee.io/amapjava/images/vultr.jpeg">
				</a>
			</td>
			<td align="center" valign="middle">
				<a href="https://www.aliyun.com/minisite/goods?userCode=tewwu0c8" target="_blank">
					<!--<img height="120" src="https://img.alicdn.com/tfs/TB1Gc3zmAL0gK0jSZFxXXXWHVXa-259-194.jpg">-->
					<img height="120" src="https://ride-group.gitee.io/amapjava/images/aliyun.jpeg">
				</a>
			</td>
		</tr>
	</tbody>
</table>

## 捐助 donate

<table border="0">
	<tbody>
	    <tr>
	        <td>支付宝</td>
	        <td>微信</td>
	    </tr>
		<tr>
			<td align="left" valign="middle">
                <!--<img height="120" src="https://wx4.sinaimg.cn/mw690/46b94231ly1ge0okee0fej20ec0e6gp3.jpg">-->
                <img height="120" src="https://ride-group.gitee.io/amapjava/images/alipay.jpeg">
			</td>
			<td align="center" valign="middle">
				<!--<img height="120" src="https://wx4.sinaimg.cn/mw690/46b94231ly1ge0okecldyj20e80e8n0c.jpg">-->
				<img height="120" src="https://ride-group.gitee.io/amapjava/images/wechat.jpeg">
			</td>
		</tr>
	</tbody>
</table>
