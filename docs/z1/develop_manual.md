# Z1 Robotic Arm Development Documentation

## Prepare
### IP
기본 ip: 192.168.123.110  

⚠️ 로봇과 PC를 이더넷으로 연결 후 ```python3 unitreeArmTools.py``` 실행하시면 IP 변경이 가능합니다. (우측 랜포트)

### SDK 다운로드
- 컨트롤러: [z1_controller](https://github.com/unitreerobotics/z1_controller)
- SDK 인터페이스: [z1_sdk](https://github.com/unitreerobotics/z1_sdk)
- ROS 시뮬레이션: [unitree_ros](https://github.com/unitreerobotics/unitree_ros) , [unitree_legged_msgs](https://github.com/unitreerobotics/unitree_ros_to_real)

### 초기 위치
![초기 위치](https://oss-global-cdn.unitree.com/static/00cf031d4e43437f86ff8e6bb9cc120a.JPG)
기기의 전원이 성공적으로 켜지면 녹색 표시등이 계속 켜져있고, 자체 검사를 통과하면 파란색 표시등이 깜박입니다. 로봇팔 끝부분에 있는 모터의 전원은 DC24V 전원을 공급받습니다. 


### User PC 네트워크 구성
로봇팔과 동일한 세그먼트인 123으로 설정합니다. 

![ip 설정](https://oss-global-cdn.unitree.com/static/ff90067601bd4608b32db4478481379b_731x450.jpg)

네트워크 구성 후, 로봇팔과의 연결이 정상인지 확인합니다.   
```ping 192.168.123.110```

---

## SDK Guide
### 시스템 요구사항
Ubuntu 18.04 이상의 X86 아키텍처 기반 Linux 플랫폼에서 실행 가능합니다.  
필수 종속 패키지는 다음과 같습니다.  

- libboost-dev  
- libeigen3-dev 

### 제공되는 파일
1. z1_controller: Z1 로봇팔을 직접 제어하는 실행 코드

    [다운로드 - z1_controller](https://github.com/unitreerobotics/z1_controller)

2. z1_sdk: Z1 제어에 사용되는 다양한 인터페이스 포함  
    
    [다운로드 - z1_sdk](https://github.com/unitreerobotics/z1_sdk)

3. unitree_ros: 시뮬레이션 파일

    [다운로드 - unitree_ros](https://github.com/unitreerobotics/unitree_ros)

### 1️⃣ z1_controller
✅ 초기 실행 시 build 디렉터리 생성 후 컴파일하면 ```z1_ctrl``` 실행파일을이 생성됩니다.  

    $ cd z1_controller    
    $ mkdir build & cd build
    $ cmake ..
    $ make

- 버전 확인: ```./z1_ctrl -v```
- 키보드 제어: ```./z1_ctrl k```
- SDK 제어: ```./z1_ctrl```

Gazebo가 설치되어 있다면, ```unitree_ros``` 시뮬레이션과 통신하는데 사용되는 ```sim_ctrl``` 실행파일도 생성됩니다.   

### 2️⃣ z1_sdk
examples: 예제 코드로 SDK 사용법을 설명합니다.  

1. highcmd_basic: 간단한 동작을 위한 예제/주요 함수  
2. lowcmd_development: 모터의 PD 파라미터 직접 제어  
    - 제어 파라미터: q, qd, τf, kp, kd  

example_py: z1_sdk의 python 버전 인터페이스를 포함합니다. 

### 3️⃣ ROS simulation 연동
1. workspace 생성
    
    : ROS 패키지를 구성할 워크스페이스를 생성합니다. 

    ```$ mkdir -p unitree_ws/src```

2. src 폴더 안에 unitree_ros 폴더를 넣어줍니다.  
    - 경로: ~/unitree_ws/src/unitree_ros  
3. src 폴더 안에 unitree_legged_msgs를 넣어줍니다.  
    - [다운로드 - unitree_legged_msgs](https://github.com/unitreerobotics/unitree_ros_to_real) 
    - 경로: ~/unitree_ws/src/unitree_legged_msgs  

4. 빌드 및 환경 설정   

        $ cd ~/unitree_ws
        $ catkin_make
        $ echo “source ~/unitree_ros/devel/setup.bash”>>~/.bashrc
        $ source ~/.bashrc

### 예제 실행
1. 실제 기계 제어

        Terminal1
        ~/unitree_ws/src/z1_controller/build$ ./z1_ctrl

        Terminal2
        ~/unitree_ws/src/z1_sdk/build$ ./highcmd_basic

2. 시뮬레이션 제어

        Terminal1
        ~/unitree_ws$ roslaunch unitree_gazebo z1.launch
        
        Terminal2
        ~/unitree_ws/src/z1_controller/build$ ./sim_ctrl
        
        Terminal3
        ~/unitree_ws/src/z1_sdk/build$ ./highcmd_basic

---

## Keyboard Guide
### JOINTCTRL
JOINTCTRL 모드는 로봇팔의 관절 공간 속도 제어를 위한 기능입니다. 키보드를 길게 눌러 6개의 관절을 직접 제어하여 로봇팔을 움직일 수 있습니다.

<span style="color: red;">⚠️ 주의: 모든 관절 좌표계는 오른손 법칙을 따릅니다.</span>  
사용 전 각 관절의 정/역방향 움직임을 반드시 확인해주시기 바랍니다.

| Joint ID | 0 | 1 | 2 | 3 | 4 | 5 | Gripper |  
|----------|---|---|---|---|---|---|---------|    
| Keyboard (+ ; 정방향) | Q | W | D | R | T | Y | 방향키 ↑ |  
| Keyboard (− ; 역방향) | A | S | E | F | G | H | 방향키 ↓ |
