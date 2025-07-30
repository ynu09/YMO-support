### 개발환경
1. 로봇 운영체제: Ubuntu 20.04 LTS
2. ROS 버전: ROS2 Foxy
3. 개발도구 및 SDK → 🔗[Unitree Robotics · GitHub](https://github.com/unitreerobotics)  

    : Unitree G1은 Support site 및 <span style="color: red;">Python/C++</span> 기반의 SDK를 제공합니다.  

4. 시뮬레이션 환경 (로봇 없이 소프트웨어 개발 및 테스트할 수 있는 환경) → 🔗[GitHub - unitreerobotics/unitree_ros](https://github.com/unitreerobotics/unitree_ros/tree/master/robots/g1_description)

    : Unitree에서 제공하는 ROS 시뮬레이션 패키지를 통해 G1 로봇의 URDF(MJCF) 모델을 Gazebo(MuJoCo)에서 불러올 수 있으며, 관절 제어(토크, 위치, 속도 제어 등)와 같은 저수준 제어(low-level control)는 시뮬레이션으로 구현이 가능합니다.

5. 강화학습 시뮬레이터 → 🔗[GitHub - unitreerobotics/unitree_rl_gym](https://github.com/unitreerobotics/unitree_rl_gym)

    : 강화학습(Reinforcement Learning, RL) 기반 AI 학습을 지원하는 공식 시뮬레이션 환경을 제공합니다. 'unitree_rl_gym'에서는 Isaac Gym, MuJoCo 시뮬레이터를 이용해 G1의 모션 제어를 위한 RL 학습 환경을 구축할 수 있습니다. 기본 학습 프로세스는 <span style="color: red;">"Train → Play → Sim2Sim/Sim2Real"</span>로 구성되며, 시뮬레이터 내 학습 후 실제 로봇에 배포 가능합니다.

---

### IP
G1의 메인보드 IP는 '192.168.123.161'이며, Jetson PC(Expansion Dock) IP는 <span style="color: red">'192.168.123.164'</span> 입니다. 사용자는 메인보드에 접속할 수 없으며, 개발용 PC에만 접속 가능합니다.  

    - ID: unitree  
    - PW: 123

---

### 인공지능
1. Natural Language Process(NLP) 처리 기능
    
    : NLP 처리 기능은 없습니다.
    
2. LLM 연동 여부
    
    : **GPT**를 LLM으로 사용합니다.
    
3. 머신러닝 및 딥러닝 프레임워크 - 다양한 프레임워크(Tensor Flow, PyTorch, Scikit-learn 등)의 수용 여부
    
    : Unitree는 **PyTorch**를 사용하고 있습니다.
    
4. 커스터마이징 적용 여부(예: 사용자 작성한 강화 학습 적용)
    
    : Unitree G1은 강화학습(RL) 기반으로 동작할 수 있도록 지원하며, 사용자가 직접 작성한 RL 알고리즘을 훈련시키고, 적용하는 커스터마이징이 가능합니다.

---

### 센서 및 인지
1. 카메라, LiDAR, IMU, 촉감센서 등 다양한 센서 데이터 처리 능력
    
    : G1은 외부 센서 장착을 위한 인터페이스가 마련되어 있어, 사용자가 직접 데이터를 수집하고 처리할 수 있습니다.
    
2. 주변 환경 Mapping
    
    : 헤드 위치에 Livox Mid-360 LiDAR가 장착되어 있으나, 이를 활용한 3D 매핑 기능은 **직접 개발**하여 구현해야 합니다.
    
3. 지도상에서 로봇의 위치와 자세 추정(Localization)
    
    : Localization 기능은 4족 보행 로봇인 Go2에서는 지원되지만, G1 모델은 기본적으로 탑재되어 있지 않습니다.
    
4. 알려지지 않은 환경에서 로봇이 지도를 구성하거나 업데이트하고 동시에 자신의 위치를 추적하는 SLAM (Simultaneous Localization and Mapping) 기능 제공 여부
    
    : 마찬가지로 G1은 SLAM 기능을 기본적으로 제공하지 않으며, 사용자가 별도로 개발을 진행해야 합니다.

---

### 로봇 제어 및 동작 소프트웨어 제공 범위
1. 관절 제어, 전류 토크 제어, 모터제어, 밸런스 유지 등
    
    : 기본적인 관절 각도 제어 및 모터 구동을 지원하며, 내장 컨트롤러를 통해 팔다리 관절의 움직임을 조정할 수 있습니다. 또한, 균형 유지를 위한 강화학습 기반 알고리즘이 탑재되어 있어, IMU 등 자세 센서를 통해 정지 상태나 보행 중 실시간으로 자세를 조정하며, 경사로나 불규칙한 지면에서도 안정적인 균형을 유지할 수 있습니다.
    
2. 로봇의 움직임을 예측하고 제어하는 기능
    
    : 기본적인 motion trajectory planning(예: 사전 설정된 보행 모드, 회전 등)을 지원하며, app 또는 User PC에서 명령하여 수행할 수 있습니다. 다만, Go2와 달리 실시간 환경 인식 기반의 장애물 회피와 같은 복잡한 동적 움직임 예측 알고리즘은 기본적으로 탑재되어 있지 않아, 사용자가 직접 개발해야 합니다.

---

### 네트워크
1. 내부 통신 방식 → 🔗[GitHub - unitreerobotics/unitree_sdk2](https://github.com/unitreerobotics/unitree_sdk2)
    
    : G1을 포함한 Unitree 로봇(Go2, B2, H1, G1)은 내부 통신에 **CycloneDDS 기반의 통신 메커니즘**을 사용하고 있으며, unitree_sdk2를 통해 쉽게 접근할 수 있습니다. 또한, ROS2도 동일하게 DDS를 기반으로 하고 있어, SDK 인터페이스를 거치지 않고도 ROS2의 내장된 메시지로 직접 통신 및 제어가 가능합니다.
    
2. 외부 통신 방식
    - 유선 통신: 네트워크 케이블 인터페이스가 제공되며, User PC와 연결하여 데이터 디버깅/실시간 제어가 가능합니다.
    - 무선 통신: 🔗[宇树科技 文档中心](https://support.unitree.com/home/en/G1_developer/FAQ)