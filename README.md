[toc]
# 说明
这是一个图床服务，用于写笔记配插图用的，如写 markdown 文档

**不要升级版本，就用 nmtan/chevereto:1.3.0 其它版本已经不是原创作者了，可能有些功能要收费了**

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
- init.sh: 初始化运行环境文件，此文件不用修改
- save.sh: 保存 docker 所挂载的 volume 所用，用于备份或迁移所用，此文件不用修改
- load.sh: 加载 docker 所挂载的 volume 所用，用于备份或迁移所用，此文件不用修改

## 部署容器
时空目录后运行下面命令
```bash
sh init.sh
docker compose up -d
```

## 容器数据备份与恢复
- 备份数据，运行下面脚本
	```bash
	sh save.sh
	```
	运行后在当前目录下，会生成一个 vol-chevereto.tar 的文件，这个就是容器的数据， 用于恢复作用
- 恢复数据    
	确保 vol-chevereto.tar 在当前目录下， 运行下面脚本
	```bash
	sh load.sh
	```


