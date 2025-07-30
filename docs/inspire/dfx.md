[테스트 파일 다운로드 (Google Drive)](https://drive.google.com/file/d/1DCww-yTeqH_6wH6683cyOx1FuQ6L3poW/view?usp=drive_link)

### Driver 설치
CH340 driver 설치가 필요합니다.

### 액추에이터 테스트 순서
1. 장치 관리자로 포트 확인
    
    ![test1](/YMO-support/images/inspire/inspire_test1.png)

2. Connect(연결) - 확인한 COM 포트 선택 - Search

    ![test2](/YMO-support/images/inspire/inspire_test2.png)

3. 슬라이드 바로 드래그 하여 정상 작동하는지 확인합니다.

---

### SDK
[Unitree support Guide: inspire_dfx](https://support.unitree.com/home/en/G1_developer/inspire_dfx_dexterous_hand)  

1. ping 테스트  
    ```
    $ ping 192.168.123.164  
    ```
2. G1 접속  
    ```
    $ ssh -X unitree@192.168.123.164
    ```
3. Build  
    ```
    $ sudo apt install libboost-all-dev libspdlog-dev
    ```  
    ```
    $ cd h1_inspire_service & mkdir build & cd build
    ```  
    ```
    $ cmake .. -DCMAKE_BUILD_TYPE=Release
    ```  
    ```
    $ make
    ```
4. 권한 부여, 예제 실행  
    ``` 
    $ sudo ./inspire_hand -s /dev/ttyUSB0
    ```  
    ```
    $ ./h1_hand_example
    ```