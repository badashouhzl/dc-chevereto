[toc]
# 说明
这是一个图床服务，用于写笔记配插图用的，如写 markdown 文档。请保持使用这个镜像，不要升级，因为后续版本很多功能没有了

## 相关网址
- [surenkid/chevereto dockerhub 地址](https://hub.docker.com/r/surenkid/chevereto): 镜像更新到了 1.6.2, 且集成了中文这个仓库可能国内的镜像站没有，还是要从  dockerhub 官方站下载，所以这里可能要代理
- [ 支持多国语言的 chevereto-free github 项目地址](https://github.com/keven1024/chevereto-free-multi-language): 代码仓库地址

## 文件说明
- .env: 容器的配置文件，可以修改，也可以直接用不修改，里面有以下重要参数
	- image: docker 镜像
	- port: 映射到宿主机的端口，改成自己喜欢的端口
	- CHEVERETO_DB_HOST: mysql 主机 ip
	- CHEVERETO_DB_PORT: mysql 服务端口
	- CHEVERETO_DB_USERNAME: mysql 用户名
	- CHEVERETO_DB_PASSWORD: mysql 密码
	- CHEVERETO_DB_NAME: mysql 库名
	- 其它及详情参数文件中有注释
- docker-compose.yaml: docker 容器编排文件，此文件不用修改
- ctrl: docker 命令封装
	- ./ctrl help: 查看说明
		```txt
		用法: ./ctrl [选项]
		可用选项:
			init			初始化容器部署文件(端口转发), 没有执行 private 之前
			init private	初始化容器部署文件(nginx 代理)
			init public		还原容器部署文件为(端口转发)
			save			备份容器的数据卷(备份在 backup/<数据卷名称>.tar.gz)
			save <备份名称>	备份容器的数据卷(备份在 backup/<备份名称>.tar.gz)
			load			还原备份容器的数据卷(备份在 backup/<数据卷名称>.tar.gz)
			load <备份名称>	还原备份容器的数据卷(备份在 backup/<备份名称>.tar.gz)
		```

## 部署容器
时空目录后运行下面命令
```bash
./ctrl init
docker compose up -d
```

## 容器数据备份与恢复
```shell
./ctrl help
```
查看使用说明

## 网站设置
推荐设置以下内容
- 语言
	- 默认语言：简体中文
	- 自动语言：启用
	- 语言选择器：启用
- 网站
	- 网站名称
	- 网站标题
	- 网站描述
	- 默认时区
- 用户
	- 开放注册：禁用
	- 开放上传: 禁用
	- 用户内容删除: 启用
- 主题
	- 光栅Logo图像
	- 网站图标
- 图片上传
	- 水印相关设置
- 主页
	- 光栅Logo图像
- 系统
	- 自动更新检查： 关闭
	- 显示可用的更新通知：关闭
- API
	- 密钥：使用
