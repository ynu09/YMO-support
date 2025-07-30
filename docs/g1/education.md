# G1 조종기/앱 사용법  
✅[G1 앱 다운로드/Tutorial 영상/매뉴얼 링크](https://www.unitree.com/app/g1)  

- iOS

    <img src="/YMO-support/images/g1_education/ios.png" width="500" height="auto">

- Android

    <img src="/YMO-support/images/g1_education/android.png" width="500" height="auto">

## <h2 style="font-weight: 900;">1️⃣로봇 부팅</h2>
<video width="700" controls>
<source src="https://www.unitree.com/images/9082483c275044a6bc92007b1361b8e5.mp4" type="video/mp4">
</video>

## <h2 style="font-weight: 900;">2️⃣조종기</h2>

### 조종기 기능
![controller 이미지](/YMO-support/images/g1_education/controller_img.png)

### G1 조종기 바인딩  
새로운 조종기로 교체하시는 경우, 로봇과 조종기 간 바인딩이 필요합니다. 
<video width="700" controls>
<source src="https://www.unitree.com/images/013139a173db47c19f000d61ab33ff19.mp4">
</video>

### **[ON]** 눕혀둔 로봇 일으키는 방법
1. 로봇 전원 ON (버튼 짧게 1번, 길게 1번 - 3초 정도 누릅니다.)
2. Zero Moment Mode: L2+Y
3. Damping Mode: L2+B
4. Lie → Stand: L2+X

---

### **[ON]** 거치대에 걸린 로봇 걷게 하는 방법
1. 로봇 전원 ON
2. Zero Moment Mode: L2+Y
3. Damping Mode: L2+B
4. Locked Standing: L2+윗방향  
    
    : 로봇 서는 자세로 전환

5. 로봇 발이 바닥에 닿도록 여유있게 거치대에서 내려주기 
6. 1-Dof-Waist: R1+X  
    
    : 로봇 중심 잡는 모드

7. 어깨에 양쪽의 락커를 해제합니다.

---

### **[OFF]** 로봇 거치대에 거는 방법
🚨**주의!** <span style="color: red;">로봇이 켜진 상태에서 거치대 줄을 위로 올리지 마세요. 중심을 잡지 못해 바둥거립니다.</span>  

1. 로봇을 거치대 앞으로 이동  
2. 어깨 양쪽에 락커 걸어주기  
3. 로봇 발이 바닥에 닿은채로 거치대 줄 팽팽하게 되도록 당겨주기  
4. Damping Mode: L2+B (약 5초간 길게 누릅니다.) → <span style="color: blue;">LED가 노란색으로 바뀝니다!</span>  

    <img src="/YMO-support/images/g1_education/yellow_led.png" width="500" height="auto">

5. 거치대 줄 위로 더 올리기  
6. 로봇 전원 OFF (버튼 짧게 1번, 길게 1번 - 3초 정도 누릅니다.)  

---

### **[OFF]** 로봇 의자에 앉혀서 끄는 방법
1. Seated Mode: L2+왼쪽키
    
    🚨**주의!** <span style="color: red;">의자가 가볍거나 등받이가 없다면, 안전하게 로봇 등 윗부분 손잡이를 잡은채로 앉혀주세요.</span>
    
2. Zero Moment Mode: L2+Y
    
    : 로봇 관절 힘 풀어주는 모드
    
3. Damping Mode: L2+B
4. 로봇 전원 OFF

---

### 스쿼트 자세 전환  
1. Squat ↔ Stand: L2+A (약 5초간 길게 누릅니다.)  

    : 스쿼트 자세로 전환
    
2. Squat ↔ Stand: L2+A (약 5초간 길게 누릅니다.) 
    
    : 다시 스탠드 자세로 복귀

---

### 로봇 모션
<img src="/YMO-support/images/g1_education/motion.png" width="470" height="auto">

- 동일한 버튼을 다시 누르면, 원래 자세(차렷)로 돌아갑니다.  

<ol>
  <li>Wave Hand: SELECT + Y<br> : 손 흔들기</li>
  <li>Handshake: SELECT + A<br> : 악수하기</li>
  <li>Turn Around and Wave Hand: SELECT + X<br> : 뒤돌아서 손 흔들기</li>
</ol>

---

### [Regular Mode] 로봇 속도 조절
<img src="/YMO-support/images/g1_education/speed.png" width="470" height="auto">

1. Low Speed Mode: L2 더블클릭
    
    : 속도 느리게 변경
    
2. High Speed Mode: L1 더블클릭
    
    : 속도 빠르게 변경

---

### [Running Mode] 사람처럼 자연스럽게 걷는 모드
1. 사람처럼 걷기 시작하기: R2+A (약 5초간 길게 누릅니다.) 
    1. 느린 속도: R2+아랫방향
    2. 빠른 속도: R2+윗방향
2. 기본 걸음걸이로 돌아가기: R1+X (약 5초간 길게 누릅니다.)

## <h2 style="font-weight: 900;">3️⃣앱 기능</h2>
<img src="/YMO-support/images/g1_education/app.jpg" width="800" height="auto">

### Tutorial 영상 보기 
1. “Guide-Tutorial Video” 메뉴로 들어갑니다.

    <img src="/YMO-support/images/g1_education/tutorial1.jpg" width="700" height="auto">

2. 기초 조작법과 기능을 영상으로 확인할 수 있습니다.

    <img src="/YMO-support/images/g1_education/tutorial2.jpg" width="700" height="auto">

---

### 앱-로봇 연결
먼저 블루투스를 활성화하여, 주변에 있는 휴머노이드 모델을 인식합니다. 원하는 이름을 설정해주시면 됩니다. 접속하는 방법은 두 가지가 있습니다.  

1. AP mode: 스마트폰을 휴머노이드의 핫스팟에 연결합니다. 반드시, 데이터를 끈 상태여야 합니다. wifi 설정으로 들어가서 이름을 찾습니다. 
2. Wi-Fi mode: 공유기를 통해 로봇개를 연결합니다. 현재 스마트폰에 접속된 wifi로 접속해야 하며, 해당 wifi의 비밀번호를 입력해주세요.  

⚠️ <span style="color: red;">펌웨어 업데이트 및 Function 기능은 반드시 Wi-Fi 모드에서만 사용 가능합니다.</span>

<video width="700" controls>
<source src="https://www.unitree.com/images/4272b99b2fe34a2aa8ff5fcdbb20c550.mp4" type="video/mp4">
</video>

---

### 언바인드 방법
로봇은 1대의 스마트폰과만 연동됩니다. 다른 스마트폰에서 사용하려면 기존 연결을 먼저 언바인드해야 합니다.

<img src="/YMO-support/images/g1_education/unbind1.png" width="700" height="auto">
<img src="/YMO-support/images/g1_education/unbind2.png" width="700" height="auto">
<img src="/YMO-support/images/g1_education/unbind3.png" width="700" height="auto">

---

### 펌웨어 업데이트 방법
1. 로봇 배터리를 충분히 충전해주세요.
2. 앱에서 G1에 Wi-Fi 모드로 연결합니다.
3. 아래 두 가지 방법 중 선택
    - 방법 1: “Go!” 버튼을 누르면, “New Firmware”라는 메시지와 함께 업데이트 팝업이 나타납니다.
    - 방법 2: “Device-Update” 설정으로 들어가 업데이트를 진행할 수 있습니다.

        <img src="/YMO-support/images/g1_education/firmware.png" width="700" height="auto">

---

### 카메라/모션/조종
1. “Go!” 버튼을 누르면 G1의 카메라 화면 확인 및 추가된 모션들을 실행하실 수 있습니다.
    
    ⚠️ <span style="color: red;">1-Dof-Waist 모드 상태여야 합니다.</span>
    
    - 모션 종류: Handshake, High Five, Hug, High Wave, Clap, Face Wave, Left Kiss, Arm heart, Right Heart, Hands Up, X-Ray, Right Hand Up, Reject

    <img src="/YMO-support/images/g1_education/camera.jpg" width="700" height="auto">

2. 왼쪽 조종키: 앞/뒤/좌/우 이동
3. 오른쪽 조종키: 방향 전환
4. 카메라/영상 버튼 클릭 시 사진 촬영 가능합니다.

---

### 음성인식
1. “Function-BenBen”으로 들어갑니다.

    <img src="/YMO-support/images/g1_education/benben1.jpg" width="700" height="auto">

2. GPT처럼 로봇과 대화할 수 있으며, 간단 명령이 가능합니다.
    
    🚨**주의!** <span style="color: red;">영어, 중국어만 지원합니다.</span>  
    ex) 명령 예시: "Take one step forward"

    <img src="/YMO-support/images/g1_education/benben2.jpg" width="700" height="auto">
    <img src="/YMO-support/images/g1_education/benben3.jpg" width="700" height="auto">

---

### Calibration 방법
1. “Device-Data-Robot”으로 들어갑니다.

    <img src="/YMO-support/images/g1_education/calibration1.png" width="700" height="auto">
    <img src="/YMO-support/images/g1_education/calibration2.png" width="700" height="auto">
    <img src="/YMO-support/images/g1_education/calibration3.jpg" width="700" height="auto">


2. 로봇의 걸음이 이상하거나 모터가 오작동할 경우, 앱 안내에 따라 Calibration을 진행합니다.

    <video width="600" controls>
    <source src="https://www.unitree.com/images/0451dce775214af790ac8ab101f682bb.mp4" type="video/mp4">
    </video>