## 🛠️ YMO-support

YMO-support는 **로봇 기술지원용 정적 웹사이트**로, Yahboom / Unitree / 기타 로봇 플랫폼의 A/S 및 셋업 가이드를 정리한 문서 모음입니다.  
이 저장소는 GitHub Pages 또는 로컬 서버를 통해 서비스됩니다.

### 🌍 배포 주소 (로컬 테스트 기준)
`https://ynu09.github.io/YMO-support/`

### 📚 기술문서

- Go2 - 4족보행 로봇
- G1 - 휴머노이드 로봇
- Inspire - 로봇손
- Z1 - 로봇팔
- A/S

### 구조
├── YMO-support
│   ├── index.md # 메인 페이지: 홈
│   ├── after_service # A/S
│   │   └── after_service.md
│   ├── g1
│   │   ├── develop_manual.md # 개발 가이드
│   │   ├── education.md # 납품교육 - 조종기/앱
│   │   ├── model.md # 모델 소개
│   │   └── Q&A # 자주 묻는 질문
│   │       ├── app.md # 앱
│   │       ├── develop.md # 개발
│   │       └── hardware.md # 하드웨어
│   ├── go2
│   │   ├── develop_manual.md
│   │   ├── education.md
│   │   ├── model.md
│   │   └── Q&A
│   │       ├── app.md
│   │       ├── develop.md
│   │       └── hardware.md
│   ├── inspire
│   │   ├── dfx.md # Ultimate C - 사용법 
│   │   └── dftp.md # Ultimate D - 사용법 
│   └── z1
│       ├── develop_manual.md
│       ├── hardware.md
│       ├── model.md
│       └── readme.md
└── mkdocs.yml

### 🙋 관리자
영인모빌리티 응용지원팀 서연우 사원
- Unitree 실사용 기반으로 정리