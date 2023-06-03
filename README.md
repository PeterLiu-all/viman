# Viman

在命令行和vim中查看Linux manual，数据库包括man、cppman、tldr

使用下列命令安装

```bash
chmod +x ./install.sh
./install.sh
```

只需要使用命令`viman -e 函数/命令名`就能自动在man/cppman间搜索。之所以写这个脚本最主要的动机是cppman里将cppman的数据导入man失败了并且不知道怎么修复...并且man自带的编辑器（文本浏览器？）不好用，并且还想集成tldr

注意，想要使用该脚本必须先下载cppman和tldr：

```shell
pip3 install cppman
sudo apt install -y tldr
tldr --update
# 如有需要，可以缓存cppman的离线数据库
# 普通使用时才下载完，而且可能是代码问题经常卡死，需要手动重启
cppman -c
```

具体使用方法（注意-e是必须的）：

```shell
# 普通使用
viman -e 名称
# 显示帮助
viman -h
# 使用tldr
viman -t -e 名称
```

在第一次使用viman的时候如果检测到没有cppman和tldr会自动下载安装

我关于这个脚本还有[一篇博文](https://peterliuzhi.top/tricks/%E4%BD%BF%E7%94%A8vim%E5%9C%A8mantldrcppman%E5%BA%93%E9%97%B4%E6%90%9C%E7%B4%A2%E5%B8%AE%E5%8A%A9%E6%89%8B%E5%86%8C%E5%B9%B6%E6%89%93%E5%BC%80/)，欢迎关注我！
