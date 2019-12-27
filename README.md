# jsp_project
2년전 한 jsp project 복습 &amp; 프론트엔드 부트스트랩 이용하여 꾸미기 

# 이전 프로젝트 복구 시 문제점

문제가 뭔지 모르겠음 - 문제 : db 연결이 안됨. ping failed 
1. 환경변수의 문제? - 학교 db 변수하고 꼬인건가?
=> 해결을 어떻게 할 것인가?
=> 검색을 해보자. 검색어는? 이클립스 oracle 연동 시 환경변수 세팅 문제
2. 그냥 꼬인거? (강의에서는 단순히 jar 파일을 MET-INF 폴더 밑에 lib 폴더 밑에 너놓으라고 함. 난 구글링을 통해서 이것저것 손 본것이 많아서 여기서 꼬인 것일 수 도 있음. 
	1) jar 파일이 ojdbc6.jar 이외에 3개가 더 있음. 이것때문인가?
	2) ...?
3. 서버 문제? - 이건 아닌것 같음? 근데 왜 다시 돌렸을 때 server port 충돌이 일어났을까? -> 컴퓨터를 재부팅 전에 서버문제는 해결되었음. 다시 재부팅 후 돌려봤을 때 서버 포트 문제 발생

* 만약 다시 갈아엎는다면? -> 프로그램 실행 환경 새로 설정하고 github 연동 시켜야 함. 
-> 해결해야 할 점 1) github - eclipse 연동 방법 찾아내야 함. 
		2) 어디서부터 다시 시작할 것인가? 
		3) db 는 어떤 걸 쓸 것인가? 
		4) 만약 또 위와 똑같은 문제가 발생한다면 어떻게 할 것인가?

4. jsp 강의 동영상 재생기 문제가 좀 있음. 크롬으로 하면 실행 자체가 안되고 에러가 뜨고 익스플로러는 자꾸 에러 창이 뜸. 이것도 좀 많이 거슬리는 상태.

# 2019-12-27 git bash 사용하기로 결정
~~~ bash
$ git init  
$ git remote add origin [url]  
$ git pull origin master  
$ git add .  
$ git commit -m 'modify file'  
$ git push origin master
~~~

## 서버 구축
1. https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.30/bin/ 
에서 apache-tomcat-8.0.30.exe  다운로드 (windows 32/64 용)
* 서버가 자주 바뀐다면 통 파일(zip) 다운하면 됨. 나는 설치에 의의를 두므로 실행파일 다운하였음. 

2. C:\Tomcat 8.0 - 톰캑 설치 경로 이걸로 바꾸기
이때 톰캣 서비스가 멈춰있어야 한다. 만약 실행 중인 상태에서 이클립스에서 작업하면 포트 충돌 발생 
-> configure tomcat -> http://localhost:8080 뜨는거 확인

3. dynamic project 생성  
jsp file 생성 후 테스트  
 tomcat 8.0.30 with eclipse jee(ee) 로 server test 성공

4. oracle database setting   
이전 프로젝트 복기중 db 연동에서 오류가 떴었는데, 그 이유가 포트번호 에러인 것 같다. 이전 프로젝트에서 oracle 포트번호를 9090 으로 세팅했었다. 
-----------12-27/5:36 db 세팅 전까지 작업, 테스트 완료


