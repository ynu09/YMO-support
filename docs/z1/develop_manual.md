# Z1 Robotic Arm Development Documentation

### IP
192.168.123.110

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