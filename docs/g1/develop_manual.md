### 개발환경
1. 로봇 운영체제: Ubuntu 20.04 LTS
2. ROS 버전: ROS2 Foxy
3. 개발도구 및 SDK → 🔗[Unitree Robotics · GitHub](https://github.com/unitreerobotics)  

    : Unitree G1은 Support site 및 Python/C++ 기반의 SDK를 제공합니다.  

4. 시뮬레이션 환경 (로봇 없이 소프트웨어 개발 및 테스트할 수 있는 환경) → 🔗[unitree_ros](https://github.com/unitreerobotics/unitree_ros/tree/master/robots/g1_description)

    : Unitree에서 제공하는 ROS 시뮬레이션 패키지를 통해 G1 로봇의 URDF(MJCF) 모델을 Gazebo(MuJoCo)에서 불러올 수 있으며, 관절 제어(토크, 위치, 속도 제어 등)와 같은 저수준 제어(low-level control)는 시뮬레이션으로 구현이 가능합니다.

5. 강화학습 시뮬레이터: 🔗[unitree_rl_gym](https://github.com/unitreerobotics/unitree_rl_gym)