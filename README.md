# indoor-positioning-micro-gait-zupt-
indoor positioning (micro gait /zupt)
一Arduino+MPU-9250+电脑
1.概述 
  该系统利用9250采集数据，然后利用电脑离线处理
2.硬件结构
https://github.com/sstk123/indoor-positioning-micro-gait-zupt-/master/indoorpositioning/图片1.png
图1 系统硬件构成
a.MPU-9250负责采集加速度与角速度原始数据
b.Arduino负责在MPU-9250中读取数据并利用串口将数据传送至电脑
c.电脑利用matlab对数据进行处理，得到最终结果

3.使用方法
1>.将如下图所示的程序MPU9250BasicAHRS(1).ino拷入到板子
2>将arduino板子与电脑用串口线相连,可利用AccessPort程序进行数据的读取，或者使用matlab程序dataCollect进行读取
3>利用matlab处理数据并得到结果

分别用于处理rec_3_0228.txt、Circle_3_0228.txt
、line_3_0228.txt三个文件的数据

二、树莓派+jy901+手机
1.概述 
利用jy901采集用户步伐数据，树莓派连接手机共享的网络，通过udp传送给手机，手机处理数据并实时显示轨迹
2.硬件结构
jy901：采集用户步伐数据
树莓派：采集jy901的数据，并通过udp将数据传输到手机端
手机：共享网络给树莓派，对树莓派传输的数据进行处理并实时的显示运动轨迹
3.使用方法
1）远程控制
a.手机端安装远程控制软件，可以选择阿里的 程序员工具箱.apk(应用商店直接下载就行，或者选用其他远程控制软件)，手机共享网络，树莓派连接网络后，
b.打开软件在右上角创建新连接
Ip地址可以通过手机查到，比如192.168.43.141，登录名是树莓派登录名，密码是树莓派名字


C.如果程序是在root下写的，则需要登录到root账户
	
2）手机程序
数据处理+绘制路径（软件与软件的代码在Android目录下）
   配置好远程软件后，将远程软件打开连接后切换到后台，然后打开
即处理数据的软件，
3）树莓派程序
