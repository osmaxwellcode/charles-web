<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">Charles Web</h1>
<h4 align="center">基于SpringBoot+Vue前后端分离的Java快速开发框架</h4>

## 项目简介

本项目基于RuoYi-Vue改造而来，提供了更轻量化的管理系统解决方案，仅单个Java程序，不依赖任何三方程序(RuoYi需安装MySQL，Redis)，适合中小型项目使用。

主要技术选型
- JDK 17。
- 前端采用Vue、Ant Design Vue。
- 后端采用Spring Boot3、Spring Security、EhCache & Jwt。
- 权限认证使用Jwt，支持多终端认证系统。
- 支持加载动态权限菜单，多方式轻松权限控制。
- 高效率开发，使用代码生成器可以一键生成前后端代码。
- 数据库操作层使用MyBatisPlus、SQLite。


## 本项目与RuoYi的功能差异

| 功能         | 本项目         | RuoYi   |
| ------------ | -------------- | ------- |
| 前端项目     | Ant Design Vue | Element |
| 数据库       | SQLite、MySQL  | MySQL   |
| 数据库操作层 | MyBatisPlus    | MyBatis |
| 缓存         | EhCache        | Redis   |

> 解决了并发写SQLite出现Busy的问题，将提供读写分离的数据库连接池，提升性能

## 内置功能

1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。
3.  岗位管理：配置系统用户所属担任职务。
4.  菜单管理：配置系统菜单，操作权限，按钮权限标识等。
5.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
6.  字典管理：对系统中经常使用的一些较为固定的数据进行维护。
7.  参数管理：对系统动态配置常用参数。
8.  通知公告：系统通知公告信息发布维护。
9.  操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
10.  登录日志：系统登录日志记录查询包含登录异常。
11.  在线用户：当前系统中活跃用户状态监控。
12.  定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。
13.  代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。
14.  系统接口：根据业务代码自动生成相关的api接口文档。
15.  服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。
16.  缓存监控：对系统的缓存信息查询，命令统计等。
17.  在线构建器：拖动表单元素生成相应的HTML代码。
18.  连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。



## 参与贡献

1. Fork 本仓库

2. 新建 Feat_xxx 分支

3. 提交代码

4. 新建 Pull Request

   

## 鸣谢

本项目离不开其他开源项目的支持，这里感谢他们

1. [若依/*RuoYi-Vue*](https://gitee.com/y_project/RuoYi-Vue) 基于SpringBoot，Spring Security，JWT，Vue 的前后端分离权限管理系统

2. [keeguai/ruoyi-ehcache-sqlite](https://gitee.com/keeguai/ruoyi-ehcache-sqlite)

3. [fuzui/RuoYi-Antdv](https://gitee.com/fuzui/RuoYi-Antdv) RuoYi-Vue和Ant Design Vue Pro的结合



**## 联系**

如果您发现了什么bug，或者有什么界面建议或意见，欢迎 [issue](https://github.com/osmaxwellcode/charles-web/issues)
