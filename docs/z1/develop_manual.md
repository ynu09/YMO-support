# Z1 Robotic Arm Development Documentation

## Prepare
### IP
192.168.123.110  
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

## SDK
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

### z1_controller
✅ 초기 실행 시 build 디렉터리 생성 후 컴파일하면 ```z1_ctrl``` 실행파일을이 생성됩니다.  

- 버전 확인: ```./z1_ctrl -v```
- 키보드 제어: ```./z1_ctrl k```
- SDK 제어: ```./z1_ctrl```

Gazebo가 설치되어 있다면, ```unitree_ros``` 시뮬레이션과 통신하는데 사용되는 ```sim_ctrl``` 실행파일도 생성됩니다.   


⚠️ <span style="color: red;">아직 내용 업데이트 중입니다.</span>