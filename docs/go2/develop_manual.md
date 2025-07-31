## 개발환경
1. 로봇 운영체제: Ubuntu 20.04 LTS
2. ROS 버전: ROS2 Foxy

## Electrical interface

![dock 인터페이스](/YMO-support/images/go2_develop/go2_electrical_interface.png)

---

## IP
Go2의 메인보드 IP는 '192.168.123.161'이며, Jetson PC(Expansion Dock) IP는 <span style="color: red">'192.168.123.18'</span> 입니다. 사용자는 메인보드에 접속할 수 없으며, 개발용 PC에만 접속 가능합니다.  

    - ID: unitree  
    - PW: 123

## User PC와 통신
User PC(Ubuntu Sys)의 이더넷 포트를 사용하여 Go2 Expansion Dock의 이더넷 포트에 연결하면 사용자 PC와 Go2 사이의 통신을 구축할 수 있습니다.

## 디스플레이 화면 연결
Type-C to HDMI 어댑터를 Expansion dock의 Type-C 인터페이스에 삽입하고, 디스플레이 화면 연결 케이블을 사용하여 외부 디스플레이에 연결합니다. 

![Display 연결](/YMO-support/images/go2_develop/go2_display.png)

---

## L1 라이다
: Go2 head에 기본적으로 탑재된 라이다 모델입니다.  

1. topic name: 'rt/utlidar/cloud'
2. coordinate sys: 'utlidar_lidar'
3. DDS를 사용하여 point cloud 데이터 얻기
    - unitree_sdk2를 설치합니다.
    - 'rt/utlidar/cloud' 토픽 subscribe하면 관련 정보를 출력하실 수 있습니다. 

            $ ./subscribe_pointcloud 
            Received a raw cloud here!
                stamp = 1683713030.572689533  
                frame = utlidar_lidar  
                points number = 1402


4. rviz2 도구 실행하여 point cloud 시각화
    - 먼저, ```$ rviz2```를 실행하세요.
    - [Fixed Frame]을 'odom'으로 설정합니다.
    - 왼쪽 하단의 'Add'를 클릭하고 'By topic'을 선택한 후 해당 point cloud 토픽인 '/utlidar/cloud_deskewed'를 선택합니다. 
    - [Decay Time]을 1초 이상으로 설정하여 특정 시간동안 데이터를 저장할 수 있습니다. 
    
    ![RVIZ2 이미지](/YMO-support/images/go2_develop/go2_rviz2.png)

5. L1 LiDAR 끄는 방법  
: L1 LiDAR는 기본적으로 로봇 전원을 켜면 자동으로 시작되도록 설정되어 있습니다. LiDAR를 끄고 싶은 경우(회전 중지), 제어 명령을 publish하여 중지할 수 있습니다. 
    - DDS topic: 'rt/utlidar/switch'
    - 문자열로 'ON / OFF' 내용 전송

---

## Navigation용 외장형 라이다
- 🔗[Unitree SLAM/Navigation 인터페이스 설명](https://support.unitree.com/home/en/developer/SLAM%20and%20Navigation_service)
- 🔗[Unitree - SLAM 설명영상](https://www.bilibili.com/video/BV1kyymYWENd/?buvid=XUE9766E8663F0CF09546CE5B13781F280523)

    <iframe src="//player.bilibili.com/player.html?bvid=BV1kyymYWENd&page=1" 
            scrolling="no" 
            border="0" 
            frameborder="no" 
            framespacing="0" 
            allowfullscreen="true" 
            width="700" 
            height="450"> 
    </iframe>

### 1️⃣unitree_slam SDK 가이드
1. 이더넷 케이블의 한쪽 끝을 Go2에 연결하고, 다른 쪽 끝을 User PC에 연결합니다.
1. 사용자 PC 네트워크 구성을 다음과 같이 수정합니다. 수정 후에는 이더넷 연결을 재활성화 합니다.

    ![network](https://doc-cdn.unitree.com/static/2023/9/6/0f51cb9b12f94f0cb75070d05118c00a_980x816.jpg)

2. ping 테스트

        $ ping 192.168.123.18 # Docking PC
        $ ping 192.168.123.20 # LiDAR

3. SDK 파일 설치
    
        $ cd /unitree/lib/unitree_slam
        $ sudo ./install.sh
    ![설치 사진](https://doc-cdn.unitree.com/static/2024/9/20/b90f1ca4f7214f1c8c3c061abf0ff564_561x136.png)

### unitree_slam SDK 실행 방법
1. 터미널1: 먼저, ```$ rviz2```를 실행하세요. 'File - open configuration'에서 ```/unitree/lib/unitree_slam/rviz2/``` 경로에 있는 ```build_map.rviz```를 엽니다.
2. 터미널2: ```/unitree/module/graph_pid_ws``` 경로에서 ```./0_unitree_slam.sh``` 파일을 실행합니다.

    ![터미널2](https://doc-cdn.unitree.com/static/2024/9/20/f5db161f799a4860ab1866b5d9ae57fe_1238x409.png)

3. 터미널3: ```/unitree/lib/unitree_slam/build``` 경로에서 ```./demo_mid360 eth0 ``` 또는 ```./demo_xt16 eth0 ``` 를 실행한 후, w key를 눌러 시작합니다.

![slam terminal](/YMO-support/images/go2_develop/slam_terminal.png) 

---

### 2️⃣MID-360
1. IP: 192.168.123.20

2. Viewer: 🔗[Livox Viewer2_Window Version](https://www.livoxtech.com/mobile/downloads) 
    ![livox viewer](https://doc-cdn.unitree.com/static/2024/7/26/cf6820038cb44907898098d241354765_1843x1054.png)
3. Livox 공식 SDK 가이드

    : 🔗[Manual - Unitree Support](https://support.unitree.com/home/en/G1_developer/lidar_Instructions) - 참고하여 MID360_config.json 수정  
    
    ⚠️ <span style="color: red;">G1 목차에 있지만, LiDAR ip 제외 내용 동일합니다.</span>

    - 🔗[Livox-SDK2](https://github.com/Livox-SDK/Livox-SDK2)
        
            $ git clone https://github.com/Livox-SDK/Livox-SDK2.git
            $ cd ./Livox-SDK2/
            $ mkdir build
            $ cd build
            $ cmake .. && make -j
            $ sudo make install
    
    - 🔗[livox_ros_driver2](https://github.com/Livox-SDK/livox_ros_driver2)

4. Livox 공식 SDK 실행 방법  

        $ cd ~/livox_ws/
            # cd ~/[work_space_name]/
        $ source install/setup.bash
        $ ros2 launch livox_ros_driver2 [launch file]
            # ros2 launch livox_ros_driver2 rviz_MID360_launch.py

    - Fixed Frame: livox_frame
    - Topic: /livox/lidar

---

### 3️⃣XT-16
1. IP: 192.168.123.20

2. Viewer: 🔗[Pandar View2_Window Version](https://www.hesaitech.com/downloads/)