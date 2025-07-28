### 개발환경
Ubuntu 20.04 ROS2 Foxy 권장드립니다.

### IP
Go2의 메인보드 IP는 '192.168.123.161'이며, Jetson PC(Expansion Dock) IP는 '192.168.123.18'입니다. 사용자는 메인보드에 접속할 수 없으며, 개발용 PC에만 접속 가능합니다.  

    - ID: unitree  
    - PW: 123

### Electrical interface

![dock 인터페이스](/YMO-support/images/go2_electrical_interface.png)

### 사용자 PC와 통신
사용자 PC(Ubuntu Sys)의 이더넷 포트를 사용하여 Go2 Expansion Dock의 이더넷 포트에 연결하면 사용자 PC와 Go2 사이의 통신을 구축할 수 있습니다.

### L1 라이다
1. topic name: 'rt/utlidar/cloud'
2. coordinate sys: 'utlidar_lidar'
3. DDS를 사용하여 point cloud 데이터 얻기
    - unitree_sdk2를 설치합니다.
    - 'rt/utlidar/cloud' 토픽 subscribe하면 관련 정보를 출력하실 수 있습니다. 

        ```
        $ ./subscribe_pointcloud  
        ```  
        ```
        Received a raw cloud here!  
        ```  
        ```
        stamp = 1683713030.572689533  
        ```  
        ```
        frame = utlidar_lidar  
        ```  
        ```
        points number = 1402
        ```  

4. rviz2 도구 실행하여 point cloud 시각화
    - 먼저, ```$ rviz2```를 실행하세요.
    - [Fixed Frame]을 'odom'으로 설정합니다.
    - 왼쪽 하단의 'Add'를 클릭하고 'By topic'을 선택한 후 해당 point cloud 토픽인 '/utlidar/cloud_deskewed'를 선택합니다. 
    - [Decay Time]을 1초 이상으로 설정하여 특정 시간동안 데이터를 저장할 수 있습니다. 
    
    ![RVIZ2 이미지](/YMO-support/images/go2_rviz2.png)

5. L1 LiDAR 끄는 방법  
: L1 LiDAR는 기본적으로 로봇 전원을 켜면 자동으로 시작되도록 설정되어 있습니다. LiDAR를 끄고 싶은 경우(회전 중지), 제어 명령을 publish하여 중지할 수 있습니다. 
    - DDS topic: 'rt/utlidar/switch'
    - 문자열로 'ON / OFF' 내용 전송

### Navigation용 라이다
1. LiDAR IP
: '192.168.123.20'입니다.

2. 참고 자료
    - [Manual - Unitree Support](https://support.unitree.com/home/en/G1_developer/lidar_Instructions)
    - [Livox Viewer2_Window Version](https://www.livoxtech.com/mobile/downloads) 
    - [Livox-SDK2](https://github.com/Livox-SDK/Livox-SDK2)
    - [livox_ros_driver2](https://github.com/Livox-SDK/livox_ros_driver2)
    - [Unitree SLAM/Navigation 인터페이스](https://support.unitree.com/home/en/developer/SLAM%20and%20Navigation_service)
    - [Unitree - SLAM 설명영상](https://www.bilibili.com/video/BV1kyymYWENd/?buvid=XUE9766E8663F0CF09546CE5B13781F280523)