# svn-hook-post-commit

## 功能

将用户通过SVN提交的日志进行记录，并保存到数据库里面

数据库结构见codestat.sql文件，数据库名字为codestat，同时记得修改post-commit脚本里面的db配置

## 使用方法

将post-commit脚本，放至SVN项目库hooks目录下

记得使用chmod a+x post-commit增加执行权限
