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

# 2019-12-27   
유지보수 관리 용으로 git bash 사용하기로 결정
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

# 2019-12-28

## 갑자기 tomcat server 실행이 안되는 오류 해결
에러명 : Tomcat Server Error - Port 8080 already in use
에러가 나는 이유 : 다른 process 가 해당 포트를 사용 중인 것이다.
해결방법 : 관리자 권한으로 cmd를 실행한다.
~~~ 
> netstat -ano | findstr 8080
> taskkill /F /pid [해당 포트를 사용하고 있는 놈 번호]
~~~

## db 오류 드디어 해결(거의 4시간 걸려서 해결)
ping test 시 ping failed 가 계속 떴다. 이것에 대한 해결책을 드디어 찾았다.  
1) tomcat lib 폴더에 ojdbc6.jar 파일을 넣어준다
2) java/jdk/lib? 폴더에 ojdbc6.jar 파일을 넣어준다
위 두 과정을 했는데도 에러가 생긴다면
3)작업관리자 -> 서비스 목록에서    
OracleServiceXE, OracleXETNSListener 이 두개 서비스가 실행 중이어야 한다. 만약 실행중인데도 db 연결이 오류가 뜬다면 위 두 서비스를 재시작 해준 후 다시 연결해보면 된다. 

## 현재까지 진행상황 
### db 연동 완료  
jsp 계정(비밀번호 jsp 로 동일)으로 eclipse 와 oracle 연동 성공  
### 진행 상황  
현재 index 페이지를 비롯한 전체적인 틀 만들기 완료.  
프론트엔드에 부트스트랩을 이용하여 예쁘게 꾸밀 필요 있어 보임. 

# 2019-12-29
## db connection test
컴퓨터를 켜서 eclipse 를 실행한 결과 또 다시 db와 연결이 안되었음(ping failed)  
=> 작업관리자/서비스 목록에서 OracleServiceXE 와 OracleXETNSListener 서비스들 재시작 시킨 후 ping 성공하였다.  
## insert test  
insert.jsp 실행 -> db에 insert 되는지 테스트  
~~~
SQL> conn jsp/jsp
SQL> desc book
SQL> col publisher format a10 /* 출력 시 해당 column이 차지하는 칸 수 조정 */
SQL> col writer format a5
SQL> set line 150 /* 출력 라인 칸 수 조정 */
SQL> select * from book;
~~~
## get,post 방식 학습 & 블로그 포스팅 
## delete test
delete.jsp, delete_ok.jsp 테스트 성공
## find, list 기능 추가
수정 중. arraylist 쪽 복습 후 client에서 넘어온 데이터 값을 arraylist 로 받아서 db에 넣는 작업 해야 함. 
## 오류
주기적으로 서비스 재실행 시켜줘야 db 와 연결이 됨.(db 연결이 일정 시간 지나면 끊어지는 현상 발생. 원인을 찾고있는 중)




