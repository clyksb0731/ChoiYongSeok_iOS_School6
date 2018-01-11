# ChoiYongSeok_iOS_School6

## ***1/10***

Git 추가 내용:  
**무시할 파일들(git 관리 하지 않을 파일들) 설정하기:** 특정 파일 ‘gitignore’을 숨김 상태로 만든다.  
**git 폴더 생성시(초기화시) 최초에 만들어 놓기:** 후에 만들면 이미 git 관리 된 것들은 무시 할 수 없다.  
최상위 폴더에 (.git 이 있는 폴더에) 만들어 놓는다.

**방법**  
1. www.ignore.io 에서 ‘Swift’, 'Xcode’, ‘CocoaPod’ 키워드를 입력하고 create 하면 나오는 화면의 내용들을 복사한다.  
2..git 폴더가 있는 폴더로 가서 vi .gitignore 를 실행한 후 복사한 것을 붙여놓고 저장한다.

**Xcode로 개발시**  
warning이 있는 상태로 App Store에 올리면 reject 될 수 있다.  
landscape left, right 둘다 하지 않고 App Store에 올리면 reject 된 후 이유를 묻는다.  
- 단축키  
    - cmd + 0: navigator 숨기기  
- identity in General  
    - version: major . minor . bug fix (Apple recommended)  
    - build: App Store 에 올리는 번호, 요즘은 날짜로 하는 겨우 많음 (날짜+그날의 순번)  
    - 수가 아래로 떨어질 수 없다.  
- break point  
    - Editor의 숫자를 누르면 그곳에 break point가 생기고, build 시 그곳까지 쭉 되다가 그 break point 후에는 step over (빈 줄을 띄어 넘고, step into는 line 단위로 모두 지난다) 으로 compile 할 수 있다.  
    - continue 는 다음 break point까지 쭉 실행한다.  
- Assets.scassets of project: resources (이미지 등) 넣는 곳  
- infor.plist: 각종 정보가 들어간다.  

**프로젝트:**  
- 시작지점: viewDidLoad() in ViewController.swift  
- view가 모두 로딩 된 후 viewDidLoad()가 실행된다.  
- 이미지 추가하기: assets에 추가하기, 프로젝트 내부 bundle 에 추가 할 수 있다.  
    - bundle: drag & drop on navigator 로 이미지를 추가한 후, attributes inspector에서 image 파일 이름을 맞춰준다.  

**객체지향 프로그래밍**  
- 클래스: 같은 종류의 집단에 속하는 속성과 행위를 정의한 것으로서 사용자 정의 데이터형이고 다른 클래스 또는 외부 요소와 독립적으로 디자인하여야 한다.  
- 객체: 클래스의 인스턴스 (실제로 메모리상에 할당된 것)이고 자기 자신의 고유 속성을 갖으며 클래스에서 정의된 행위를 수행할 수 있다.  
- 특징: 추상화, 캡슐화, 은닉화, 상속, 다형성  

