[테스트 파일 다운로드 (Google Drive)](https://drive.google.com/file/d/1G9N9W_PPf6UpsSyVvtifWozLkFvsr-ki/view?usp=drive_link)

### Driver 설치
[UT-885 Win 11 Driver](https://www.uotek.com/pro_view-122.html)

### 액추에이터 & 촉감센서 테스트 순서
1. ping 테스트

    : Hand와 User PC 간 통신이 정상적으로 이루어지는지 확인합니다. 만약 ping이 되지 않는다면, User PC의 네트워크가 123 세그먼트<span style="color: blue;">(예: 192.168.123.222)</span> 설정되어 있는지 다시 한번 확인해주세요. 또한, 랜선 연결 상태를 점검하거나 다른 랜선으로 교체해보는 것도 권장드립니다. 
    
    - 왼손: ```$ ping 192.168.123.210```
    - 오른손: ```$ ping 192.168.123.211```

2. 장치 관리자로 포트 확인
    
    <img src="/YMO-support/images/inspire/inspire_test1.png" width="800" height="auto">

3. 액추에이터
    
    : Connect(연결) - 확인한 COM 포트 선택 - [connections setting up] Search

    - 슬라이드로 드래그 하여 정상 작동하는지 확인합니다.
        ![test3](/YMO-support/images/inspire/inspire_test3.png)

5. 촉감센서

    : Connect(연결) - 테스트하는 손의 IP 입력 - [Ethernet connection] Search

    - Tactile 메뉴에 들어가서 센서 부분을 손으로 눌러보며, 촉감센서가 정상적으로 반응하는지 확인합니다.
        ![test4](/YMO-support/images/inspire/inspire_test4.png)

    - 촉감센서 반응 시,
        ![test5](/YMO-support/images/inspire/inspire_test5.png)