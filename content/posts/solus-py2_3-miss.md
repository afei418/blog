---
title: "Solus Py2_3 Miss"
date: 2020-11-30T18:17:42+08:00
draft: false
categories:
- System
- Linux
tags:
- Solus
- python3, 
- python2, 
keywords:
- IBUS
- Neovim
- bash_it
- Oh-my-zsh
# ruby anotation
#{{< ruby rb="深表遗憾" rt="Xi Wen Le Jian" >}}
#{{< ruby rb="My heart is broken." rt="I'm happy for that." >}}
---
#### 笔记本上的系统，从出厂预置的Ubuntu16.04,到后来的Linux mint Debian edition，在到后来的Solus，兜转了几个来回。本着不折腾的原则，可每次都要把系统折腾死。前些天为了装Freepn，一款分布式的“虚拟PN”服务，把系统装回Ubuntu，结果一个月不到，试图安装Anbox，加装了anbox的内核模块源，升级后系统挂掉了。懒得去折腾，装回了Solus。
#### Ubuntu的好处是适配性好，几乎每个软件都会先发Ubuntu版本的软件。Solus还是太小众，系统源里没有的软件，只好依靠Snap和Appimage来补充，实在不行，自行编译呗。
#### Ubuntu已经没有预装Python2了；系统默认的已经是Python3.8;直接运行python会提示没有可运行程序。哈，Debian系的软件源里有软连接py3到py2的包，如果需要可以安装，省去了手动连接的麻烦。Solus默认是Python2，默认上没有安装py2的Pip；直接运行pip或者pip3都会安装python3的模块。这样的结果是，neovim的模块pynvim，bash_it的Powerline plugin，oh-my-zsh的tmux，等等都有启动或者运行的问题。下面是详细的记录。
+ Neovim：在Daily.dev上看到两篇文章，讲的是将neovim配置成Javascript和python编辑器的。不过在github上有Jdhao的nvim-config，现成的配置。拿来主义说的就是这样的情况。需要说明的是：要严格按照文档中的顺序，认真安装依赖。偷了懒，拿了autoinstall.sh以为脚本会自动安装依赖，结果走了不少弯路。安装后需要修改python参数的地方在用户目录下的.config/nvim/core/variables.vim里面 ，把所有的python改成python3。
+ bash_it：powerline安装在python3的环境里，bash_it启动powerline插件脚本里也是python，直接改称python3即可。
 oh-my-zsh：建议安装[p10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)模板，会提高使用时的愉悦度几个档次。不推荐打开tmux插件，在oh-my-zsh环境下修改配置貌似不知道那里下手。
#### 后记：Freepn挺不错的，虽然有时连不上，但是连上后查看网页还是可以的，推特和脸书都可登陆，谷歌查询体验也不错。不过目前只有适配Gentoo和ubuntu的版本放出，和Archlinux和Debian的早期体验版；别的系统都处于Get notified.
