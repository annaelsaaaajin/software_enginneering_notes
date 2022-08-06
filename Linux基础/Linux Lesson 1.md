# Linux Lesson 1
- Linux 常用操作

## 核心
- 实用主义
- 不能求全
- 前后端交互本质
```cpp
   string function(string url)
   {
     return “html”;
   }
```
   
## 寻求帮助
- `[command] --help`
- `man [command]`

## 命令行交互方式
   服务器(主机)  <——ssh——> Terminal（屏幕）
   
## 文件结构
- `/`： 根目录
- `/bin:` `/usr/bin`: 可执行二进制文件的目录，如常用的命令`ls、tar、mv、cat`等。
- `/etc`： 系统配置文件存放的目录
- `/home`： 系统默认的用户家目录
- `/lib:/usr/lib:/usr/local/lib`： 系统使用的函数库的目录，程序在执行过程中，需要调用一些额外的参数时需要函数库的协助
- `/proc`： 此目录的数据都在内存中，如系统核心，外部设备，网络状态，由于数据都存放于内存中，所以不占用磁盘空间
- `/tmp`： 一般用户或正在执行的程序临时存放文件的目录,任何人都可以访问,重要数据不可放置在此目录下
- `/var`： 放置系统执行过程中经常变化的文件 `var/log`

## 路径描述
- 绝对路径  
   开头一定是根目录：`\`
   显示绝对路径：`pwd`
- 相对路径
- 当前目录：`.`
- 上一个目录：`..`
- home目录：`~`

## shell基本操作
- `Ctrl + C`：取消命令并换行
- `Ctrl + U`：清空本行命令
- `Tab`：命令或文件名补全如果补全不了快速按两下tab键，可以显示备选选项
- `方向键`：可以回到上一个命令

## 基础命令

### ls
- `ls`：列出当前目录下所有文件，蓝色的是文件夹，白色的是普通文件，绿色的是可执行文件
- 参数：
    - `-l`：展示详细信息
    - `-h`：展示人性化信息
    - `-a`：显示所有文件（包括以`.`开头的隐藏文件）
    - `ll`：等价于`ls -la`

### pwd
- `pwd`：显示当前路径

### cd
- `cd [Directory]`：进入到此路径
>    `cd` ：默认返回家目录
>    `cd ..`： 返回上一层目录
>    `cd -`： 返回上一个待过的目录

### cp
- `cp [Directory_1] [Directory_2]`：将路径1内容复制一份放路径2里面, 复制 + 粘贴 + 重命名
> `cp a/tmp.txt b`：复制一份到粘贴到b里面
> `cp a/tmp.txt b/tmp2.txt`： 复制一份到粘贴到b里面,并重命名
- 如果复制文件夹后面加`-r`
> `cp a b -r;` ：将a复制一份粘贴到b里面
- `*`表示本文件夹里所有文件

### mkdir
- `mkdir a` ：创建文件夹a
> `mkdir /home/acs/a/b` :在根目录下创建文件
- `mkdir a/b/c -p`：可以加-p创建一系列的文件夹
> `mkdir a/b/c -p` 在该文件夹下创建`a/b/c`复合文件夹

### touch
- `touch [File]`:  新建文件

### history
- `history`：显示历史用过的指令

### rm
- `rm [File]`：删除该文件
> `rm tmp.txt tmp2.txt` : 删除tmp.txt和tmp2.txt
- `rm [Folder] -r`：删除该文件夹
> `rm b -r`:   删除b文件夹
- 支持正则表达式
> `rm .txt`:   删除所有txt文件
- `rm /* -rf`:  删除所有文件
   - `-f` : 强制删除 
- windows彻底删除文件:`Shift + Delete`

### mv
- `mv [Directory_1] [Directory_2]` ：剪切+ 粘贴
> `mv a/tmp.txt b/`: 将a中tmp.txt文件挪到b文件夹里面
> `mv b/tmp.txt a/tmp2.txt`:  将b中tmp.txt文件挪到a文件夹里面并重命名为tmp2.txt
> `mv tmp2.txt tmp.txt` 将tmp2.txt重命名为tmp.txt

### cat
- `cat [File]` :  查看文件
> `cat a/tmp.cpp`: 查看tmp.cpp文件


 