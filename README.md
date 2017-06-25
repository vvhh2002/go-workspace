# go-workspace
victor's golang project workflow &amp; project template


# 说明

1. doc文档目录
	1. man手册目录
	2. install安装说明目录
2. Sub-project-names子项目源码目录 每个子项目可独立编译，未来若有包管理系统，就在该目录使用
3.  out输出目录
	1. bin输出二进制文件本机运行
4. Web目录（若有的话）  
5. 3rd公共第三方库目录(有可能是C++等的) GOPATH为当前
	1. out第三方库二进制文件输出
	2. 3rd Sub-project-names第三方库项目目录
6. tools开发工具脚本 
7. Deploy 发布工具脚本
8. vagrant环境目录
	1. tools运行vagrant的基础环境工具，
		a. 建立项目独立的开发VM环境init-vagrant.sh 
	2. Box 当前环境BOX
	3. vm 运行环境目录Vagrantfile
