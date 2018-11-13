INSERT INTO `expshare_expmodel` VALUES (2, '2018-10-30 12:18:40', '2018-10-30 12:18:40', 'jinfanx', 'jinfanx', 'springMVC,404,Spring', 0, 0, 'springMVC控制器可以被访问到但是报404', '(1) ajax调用未加@ResponseBody注解\r\n(2) 返回ModelAndView时引入了错误的包，应该引入servlet.ModelAndView，错误引入了portlet.ModelAndView', '第一种情况，在方法上加上@ResponseBody注解或用@ResetController注解代替类上的@Controller注解', 1);
INSERT INTO `expshare_expmodel` VALUES (3, '2018-10-30 18:05:37', '2018-10-30 18:05:37', 'jinfanx', 'jinfanx', 'Windows进程, windows端口号', 1, 0, 'Windows查看进程对应端口', '', '(1) tasklist | findstr 关键字（此步骤查询进程号）\r\n(2) netstat -ano | findstr 进程号 (查看进程占用的端口)', 1);
INSERT INTO `expshare_expmodel` VALUES (4, '2018-10-30 18:18:07', '2018-10-30 18:18:07', 'jinfanx', 'jinfanx', 'diango, makemigrations 无效', 0, 0, 'django makemigrations无效', '(1) 模型已经生成\r\n(2) 模型未定义在app/models.py文件中\r\n(3)表未生成, 单python manage.py makemigrations显示无改变', '第一种情况，删除django_migrations表中APP对应的记录以及app/migrations下的缓存文件即可。第二种情况，将模型定义到app/models.py文件中，若还有问题，则看第三种情况。第三种情况，可能是第二种情况导致的，若不是，则 python manage.py makemigrations app（具体app）即可', 21);
INSERT INTO `expshare_expmodel` VALUES (21, '2018-11-01 20:47:42', '2018-11-01 20:47:42', 'jinfanx', 'jinfanx', 'django,load,django标签库', 1, 0, '{% load %}', 'django load标签作用', '加载标签库', 21);
INSERT INTO `expshare_expmodel` VALUES (41, '2018-11-02 00:51:00', '2018-11-02 00:51:00', 'jinfanx', 'jinfanx', '高亮,js高亮', 0, 0, 'js关键字高亮', '原理：将关键字用标签包起来，加样式。可以用string的replace', '/*js的replace方法只能替换第一个，用正则替换*/\r\n    String.prototype.replaceAll = function (f, e) {\r\n        var reg = new RegExp(f, \"g\");\r\n        return this.replace(reg, e);\r\n    }\r\n\r\n    /*高亮函数 words:整段文本 query：关键字，可以是多个空格分隔的多个不同关键字*/\r\n    function highlight(words, query) {\r\n        words = words+\'\';\r\n        query = query+\'\';\r\n        var kws = query.split(\" \");\r\n        for (i in kws) {\r\n            var k = kws[i];\r\n            var r = \'<span class=\"highlighted\">\' + k + \'</span>\';\r\n            words = words.replaceAll(k, r);\r\n            console.log(words);\r\n        }\r\n        return words+\"\";\r\n    }\r\n    $(document).ready(function(){\r\n        $(\".str-highlight\").each(function(i){\r\n            console.log($(this).html());\r\n            $(this).html(highlight($(this).html(),\'{{ query }}\'));\r\n        });\r\n    });', 41);
INSERT INTO `expshare_expmodel` VALUES (42, '2018-11-02 00:59:56', '2018-11-02 00:59:56', 'jinfanx', 'jinfanx', 'pre，去背景色，去边框', 0, 0, 'pre去背景色、去边框', '设置样式即可', ' pre{\r\n        border:0px;\r\n        background-color:transparent;\r\n }', 41);
INSERT INTO `expshare_expmodel` VALUES (43, '2018-11-02 01:15:12', '2018-11-02 01:15:12', 'jinfanx', 'jinfanx', 'pre换行', 1, 0, 'pre换行', 'pre默认超出范围不换行导致水平滚动', ' pre{\r\n        white-space: pre-wrap!important;\r\n        word-wrap: break-word!important;\r\n        *white-space:normal!important;\r\n    }', 41);
INSERT INTO `expshare_expmodel` VALUES (44, '2018-11-02 17:27:36', '2018-11-02 17:27:36', 'jinfanx', 'jinfanx', '多线程，多线程状态', 1, 0, '线程状态', '线程的各个状态', '1. 新建状态(New)         : 线程对象被创建后，就进入了新建状态。例如，Thread thread = new Thread()。\r\n2. 就绪状态(Runnable): 也被称为“可执行状态”。线程对象被创建后，其它线程调用了该对象的start()方法，从而来启动该线程。例如，thread.start()。处于就绪状态的线程，随时可能被CPU调度执行。\r\n3. 运行状态(Running) : 线程获取CPU权限进行执行。需要注意的是，线程只能从就绪状态进入到运行状态。\r\n4. 阻塞状态(Blocked)  : 阻塞状态是线程因为某种原因放弃CPU使用权，暂时停止运行。直到线程进入就绪状态，才有机会转到运行状态。阻塞的情况分三种：\r\n    (01) 等待阻塞 -- 通过调用线程的wait()方法，让线程等待某工作的完成。\r\n    (02) 同步阻塞 -- 线程在获取synchronized同步锁失败(因为锁被其它线程所占用)，它会进入同步阻塞状态。\r\n    (03) 其他阻塞 -- 通过调用线程的sleep()或join()或发出了I/O请求时，线程会进入到阻塞状态。当sleep()状态超时、join()等待线程终止或者超时、或者I/O处理完毕时，线程重新转入就绪状态。\r\n5. 死亡状态(Dead)    : 线程执行完了或者因异常退出了run()方法，该线程结束生命周期。', 1);
INSERT INTO `expshare_expmodel` VALUES (45, '2018-11-02 17:55:24', '2018-11-02 17:55:24', 'jinfanx', 'jinfanx', 'git push, 重复输入密码', 0, 0, 'git push 避免每次输入用户密码', '添加本地认证即可', '1. gitbash切换到当前用户目录下。 eg: cd /c/users/Administrator\r\n2. 添加认证文件。vi .git-credentials\r\n3. 编辑认证文件。 i进入编辑模式，输入 https://{username}:{password}@github.com,eg:https://u1:u1@github.com\r\n4. 配置本地认证。切换到项目路径下，git config --global credential.helper store\r\n5. 执行git push（可以没有任何更改，直接push），输入一次用户名密码\r\n6. 再次执行git push，发现不再需要输入用户密码', 47);
INSERT INTO `expshare_expmodel` VALUES (62, '2018-11-07 21:20:21', '2018-11-07 21:20:21', 'jinfanx', 'jinfanx', 'django无法访问, 局域网内无法访问，django局域网', 0, 0, 'django项目局域网内无法访问', '(1) 被防火墙拦截\r\n(2) 通过pycharm启动，或通过python manage.py runserver 127.0.0.1:8000启动 \r\n(3)settings.py中allowed_hosts中为默认配置，即[]', '第一种情况，关闭防火墙，能访问则是防火墙问题，开启防火墙，设置过滤规则即可。\r\n第二种情况，通过脚本启动。新建run.bat, 内容： python E:/dir1/pro1/manage.py runserver 0.0.0.0:8000\r\n第三种情况，settings.py中设置allowed_hosts = [\'*\']（生产环境不建议使用，存在安全隐患）,或是在列表中加入特定IP', 21);
INSERT INTO `expshare_expmodel` VALUES (63, '2018-11-08 16:31:10', '2018-11-08 16:31:10', 'jinfanx', 'jinfanx', 'django获取第一条数据, queryset获取第一条数据', 1, 0, 'django queryset获取第一条数据', 'Model.objects.filter()得到的是queryset而不是具体的对象，可用for循环遍历，get()等获取数据', 'userset = User.objects.filter(username=username)\r\n#获取第一条数据，先判断结果集大小，无数据会抛异常\r\nif userset.count()>0:\r\n    user = userset[0]\r\n    #user = user.get()也可以', 21);
INSERT INTO `expshare_expmodel` VALUES (65, '2018-11-08 16:42:02', '2018-11-08 16:42:02', 'jinfanx', 'jinfanx', 'django模板权限判断，django权限判断，django权限', 1, 0, 'django模板中权限判断', 'django将登陆用户的权限存储在perms变量中，可直接使用该变量进行权限判断', '{% if perms.expshare.add_categorymodel %}\r\n    具体代码                           \r\n {% endif %}\r\n{# expshare为APP名称，add_categorymodel表示对categorymodel的新建权限，具体的权限可在auth_permission表中查询 #}', 21);
INSERT INTO `expshare_expmodel` VALUES (66, '2018-11-09 14:41:34', '2018-11-09 14:41:34', 'freej', 'freej', 'django admin, django 过滤， django 搜索', 2, 0, 'django admin 增加过滤条件', 'django admin中可以增加过滤和搜索', '管理站点配置文件中(admin.py)：\r\n@admin.register(models.Feedback)\r\nclass FeedbackAdmin(admin.ModelAdmin):\r\n    #admin中展示字段\r\n    list_display = (\'share\',\'type\',\'reason\',)\r\n    #页面大小\r\n    list_per_page = 20\r\n    #过滤字段，会显示在侧面\r\n    list_filter = (\'type\',\'is_resolved\',\'state\',)\r\n    #搜索字段\r\n    search_fields = (\'type\', \'state\',)', 21);
INSERT INTO `expshare_expmodel` VALUES (67, '2018-11-09 15:27:47', '2018-11-09 15:27:47', 'freej', 'freej', 'haystack 遍历, django 搜索', 1, 0, 'django haystack搜索，在页面中遍历搜索结果', 'page.object_list并不是搜索出来的对象集合', '{% for i in page.object_list %}\r\n    {# i.object 才是搜索出来的model  #}\r\n    {{ i.object.name }}\r\n{% endfor %}', 21);
INSERT INTO `expshare_expmodel` VALUES (68, '2018-11-09 16:52:01', '2018-11-09 16:52:01', 'jinfanx', 'jinfanx', 'docker 批量删除,docker', 1, 0, 'docker 批量删除退出的容器', '批量删除不再使用的容器', 'docker rm `docker ps -a|grep Exited|awk \'{print $1}\'`', 61);
INSERT INTO `expshare_expmodel` VALUES (69, '2018-11-09 17:15:16', '2018-11-09 17:15:16', 'jinfanx', 'jinfanx', 'docker, docker目录映射，docker持久化', 1, 0, 'docker 目录映射', '-v参数进行目录映射', 'docker run --name expserver1 -p 8000:8000 -v /home/data:/data -d python\r\n将本机的/home/data目录映射到容器的/data目录', 61);
INSERT INTO `expshare_expmodel` VALUES (70, '2018-11-09 18:08:30', '2018-11-09 18:08:30', 'jinfanx', 'jinfanx', 'mysql，mysql查看用户，mysql查看数据库，docker进入mysql', 1, 0, 'mysql查看当前用户和数据库', 'mysql的docker容器未配置密码，输入mysql可直接已root用户进入mysql', '查看当前用户：select user();\r\n查看当前数据库： select database();', 63);
INSERT INTO `expshare_expmodel` VALUES (71, '2018-11-09 18:13:02', '2018-11-09 18:13:02', 'jinfanx', 'jinfanx', 'mysql, mysql修改密码', 0, 0, 'mysql修改初始密码', 'mysql修改密码有多种方法', '(1). set password = password(\'新密码\');', 63);
INSERT INTO `expshare_expmodel` VALUES (72, '2018-11-09 18:51:52', '2018-11-09 18:51:52', 'jinfanx', 'jinfanx', 'zh_Hans, zh_cn,django', 0, 0, 'OSError: No translation files found for default language zh_Hans', 'django更改语言，在Windows机器上用zh_hans没问题，在linux机器上报以上异常', '将zh_Hans改为zh-Hans（下划线改为中划线）', 21);
INSERT INTO `expshare_expmodel` VALUES (73, '2018-11-09 19:09:37', '2018-11-09 19:09:37', 'jinfanx', 'jinfanx', '远程机器无法连接mysql，mysql无法连接', 0, 0, 'docker无法连接mysql，Host \'172.17.0.3\' is not allowed to connect to this MySQL server', 'mysql禁止用户从远程机器连接', 'GRANT ALL PRIVILEGES ON *.* TO \'root\'@\'%\' IDENTIFIED BY \'password\' WITH GRANT OPTION;\r\nFLUSH   PRIVILEGES;\r\n', 63);
INSERT INTO `expshare_expmodel` VALUES (74, '2018-11-09 19:40:16', '2018-11-09 19:40:16', 'jinfanx', 'jinfanx', 'django mysql报错，django数据迁移报错', 0, 0, 'django数据迁移报编码错误', '数据库编码与应用中数据库编码设置不一致', '修改数据库编码，重启服务。mysql为例：\r\n修改配置文件/etc/my.conf,添加以下配置：\r\n[mysqld]\r\ncharacter_set_server=utf8\r\n[client]\r\ndefault-character-set=utf8\r\n[mysql]\r\ndefault-character-set=utf8\r\n保存退出，重启mysql。service mysqld restart', 63);
INSERT INTO `expshare_expmodel` VALUES (75, '2018-11-09 19:57:14', '2018-11-09 19:57:14', 'jinfanx', 'jinfanx', 'linux后台，linux不挂起，linux进程不间断', 0, 0, 'linux进程后台不挂断运行', 'nohup表示挂起，不间断。&表示后台运行。一般结合使用', 'nohup python manage.py runserver 0.0.0.0:8000>nohup.out &\r\n后台不间断运行django服务，将日志输出到nohup.out', 42);
INSERT INTO `expshare_expmodel` VALUES (81, '2018-11-11 16:03:35', '2018-11-11 16:03:35', 'jinfanx', 'jinfanx', 'docker持久化，docker mysql，docker mysql持久化，docker数据持久化', 0, 0, 'docker 数据持久化', '一般有两种方法，数据卷容器和目录映射。数据卷容器即用一个专门的容器存储数据，其他容器挂载此容器实现数据共享。目录映射即把本地目录映射到容器中需要保存数据的目录，如mysql，linux中mysql的数据存储路径一般为/var/lib/mysql，将本地目录映射到此目录即可实现数据持久化。mysql具体的数据存储目录配置在/etc/my.cnf中。', 'docker run -itd -v /data:/var/lib/mysql -p 3306:3306 mysql', 61);
INSERT INTO `expshare_expmodel` VALUES (101, '2018-11-11 18:39:13', '2018-11-11 18:39:13', 'jinfanx', 'jinfanx', 'netstat安装，netstat无效，net-tools,nettools', 0, 0, 'netstat无效', '未安装net-tools工具，netstat包含在net-tools中，net-tools包含netstat, ifconfig, route, arp等', 'apt-get install net-tools', 42);
INSERT INTO `expshare_expmodel` VALUES (102, '2018-11-11 19:31:24', '2018-11-11 19:31:24', 'jinfanx', 'jinfanx', 'mysql自动停止', 0, 0, 'mysql服务自动停止', '正常运行的mysql服务自动停止，一般是内存不足导致的（内存，不是磁盘），可以在/var/log/mysqld.log中查看日志', '补充内存或减少mysql内存分配。修改/etc/my.cnf，添加配置：\r\ninnodb_buffer_pool_size=50M\r\n\r\nbash-4.2# cat /etc/my.cnf\r\n[mysqld]\r\ndatadir=/var/lib/mysql\r\nsocket=/var/lib/mysql/mysql.sock\r\nsymbolic-links=0\r\ncharacter_set_server=utf8\r\ninnodb_buffer_pool_size=50M\r\n\r\n[mysqld_safe]\r\nlog-error=/var/log/mysqld.log\r\npid-file=/var/run/mysqld/mysqld.pid\r\n\r\n[client]\r\ndefault-character-set=utf8\r\n\r\n[mysql]\r\ndefault-character-set=utf8', 63);
INSERT INTO `expshare_expmodel` VALUES (103, '2018-11-11 19:43:46', '2018-11-11 19:43:46', 'jinfanx', 'jinfanx', '内存占用，内存查看', 0, 0, 'linux 内存占用查看', '租用的服务器有时候响应很慢，有时候也会出现服务自动停止的情况，这个时候，可能是服务器内存不足', 'free -m 以M为单位查看内存使用情况\r\n', 42);
