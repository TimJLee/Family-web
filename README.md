# jsp_project - front1 test
**2년전 한 jsp project 복습 &amp; 프론트엔드 부트스트랩 이용하여 꾸미기**

# 이전 프로젝트 복구 시 문제점

문제가 뭔지 모르겠음 - 문제 : db 연결이 안됨. ping failed 
1. 환경변수의 문제? - 학교 db 변수하고 꼬인건가?
=> 해결을 어떻게 할 것인가?
=> 검색을 해보자. 검색어는? 이클립스 oracle 연동 시 환경변수 세팅 문제
2. 그냥 꼬인거? (이전 프로젝트에서는 단순히 jar 파일을 MET-INF 폴더 밑에 lib 폴더 밑에 너놓으라고 함. 난 구글링을 통해서 이것저것 손 본것이 많아서 여기서 꼬인 것일 수 도 있음. 
	1) jar 파일이 ojdbc6.jar 이외에 3개가 더 있음. 이것때문인가?
	2) ...?
3. 서버 문제? - 이건 아닌것 같음? 근데 왜 다시 돌렸을 때 server port 충돌이 일어났을까? -> 컴퓨터를 재부팅 전에 서버문제는 해결되었음. 다시 재부팅 후 돌려봤을 때 서버 포트 문제 발생

<b>만약 다시 갈아엎는다면?</b><br>
-> 프로그램 실행 환경 새로 설정하고 github 연동 시켜야 함.<br>
-> 해결해야 할 점<br>
1) github - eclipse 연동 방법 찾아내야 함.
2) 어디서부터 다시 시작할 것인가?
3) db 는 어떤 걸 쓸 것인가?
4) 만약 또 위와 똑같은 문제가 발생한다면 어떻게 할 것인가?


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
--- 위 두 과정을 했는데도 에러가 생긴다면 ---
3) 작업관리자 -> 서비스 목록에서    
**OracleServiceXE, OracleXETNSListener** 이 두개 서비스가 실행 중이어야 한다. 만약 실행중인데도 db 연결이 오류가 뜬다면 위 두 서비스를 재시작 해준 후 다시 연결해보면 된다. 

## 현재까지 진행상황 
### db 연동 완료  
jsp 계정(비밀번호 jsp 로 동일)으로 eclipse 와 oracle 연동 성공  
### 진행 상황  
현재 index 페이지를 비롯한 전체적인 틀 만들기 완료.  
프론트엔드에 부트스트랩을 이용하여 예쁘게 꾸밀 필요 있어 보임. 

# 2019-12-29
### db connection test
컴퓨터를 켜서 eclipse 를 실행한 결과 또 다시 db와 연결이 안되었음(ping failed)  
=> 작업관리자/서비스 목록에서 OracleServiceXE 와 OracleXETNSListener 서비스들 재시작 시킨 후 ping 성공하였다.  
### insert test  
insert.jsp 실행 -> db에 insert 되는지 테스트  
~~~
SQL> conn jsp/jsp
SQL> desc book
SQL> col publisher format a10 /* 출력 시 해당 column이 차지하는 칸 수 조정 */
SQL> col writer format a5
SQL> set line 150 /* 출력 라인 칸 수 조정 */
SQL> select * from book;
~~~
### get,post 방식 학습 & 블로그 포스팅 
https://timjlee.github.io/post-get/
### delete test
delete.jsp, delete_ok.jsp 테스트 성공
### find, list 기능 추가
수정 중. arraylist 쪽 복습 후 client에서 넘어온 데이터 값을 arraylist 로 받아서 db에 넣는 작업 해야 함. 
### 오류
주기적으로 서비스 재실행 시켜줘야 db 와 연결이 됨.(db 연결이 일정 시간 지나면 끊어지는 현상 발생. 원인을 찾고있는 중)

# 2019-12-30
## bootstrap 3.3.2 version 
부트스트랩 적용해서 main 페이지 꾸미기 성공.  
### 오류
git pull을 하지 않고 push 를 해서 충돌발생. -> source tree 로 병합문제 해결

# 2019-12-31
* github io 호스팅 서비스 이용하기 시도 중 -> 정적 웹페이지만 호스팅 가능함을 알았음. jsp 와 같은 동적 웹페이지는 호스팅 불가. 유료 호스팅 업체 이용해야 함.
* bootstrap 더 괜찮은 테마 찾는 중
### 학습
javabean 학습 후 블로그 포스팅

### 오류
일단 eclipse 에서 프로젝트를 run 시켜야 OracleTNSListener 가 실행이 됨을 알았다. 

# 2020-01-01
## 회원가입유무 페이지 추가
db에 새 테이블 추가
```sql
create table jsp_member
(no number primary key,
name varchar2(20) not null,
id varchar2(15) not null,
passwd varchar2(10) not null,
ssn1 varchar2(6) not null,
ssn2 varchar2(7) not null,
email varchar2(30),
hp1 varchar2(3),
hp2 varchar2(4),
hp3 varchar2(4),
joindate varchar2(10));
create sequence jsp_member_no;
```
회원 가입 테스트 성공

### 오류해결성공
아직까지 5초이상 db connection 유지가 안되는 이유 찾지 못함. 주기적으로 두 개의 서비스 재실행 하면서 테스트 하는 번거로움이 있음
```sql
-- 오류원인 첫번째 : tomcat 과 oracle 이 같은 포트번호(8080)을 사용하고 있었음. oracle port 9090으로 변경
SQL> conn /as sysdba
SQL> select dbms_xdb.gethttpport() from dual;
SQL> exec dbms_xdb.sethttpport(9090);
-- 위와 같이 한 후 다시 해보니 이번엔 ORA-12519 error 발생. 
-- 검색해보니 프로세스 할당 수를 늘려주면 해결이 된다는 사례가 많아서 시도해봄. 
SQL> alter system set processes=500 scope=spfile;
SQL> shutdown immediate;
SQL> startup;
SQL> SELECT * FROM v$resource_limit WHERE resource_name IN ('processes','sessions');
-- 이것까지 해보았으나 12초정도 지나고 db와의 연결이 끊어지는 문제는 계속 발생함.
```  

기존 학교 db project 용으로 설치하고 사용한 oracle 과 충돌이 있었을 수 도 있으므로 이를 삭제 후에 다음과 같이 진행하였다.  
jsp와 연동했던 oracle 11g 삭제 후 재설치
C:\oraclexe\app\oracle\product\11.2.0\server\bin 경로에서
sqlplus.exe 실행
``` sql
SQL> conn system/oracle -- 관리자 계정 접속
SQL> exec dbms_xdb.sethttpport(9090); -- http포트번호 바꾸기
SQL> select dbms_xdb.gethttpport() from dual; -- 포트번호 확인하기
SQL> create user jsp identified by jsp; -- 사용자 계정 만들기
SQL> grant connect, resource to jsp; -- 계정에 권한주기
SQL> conn jsp/jsp -- 사용자계정으로 들어가기
-- table 생성
SQL> create table book
(name varchar2(20),
writer varchar2(20),
publisher varchar2(30),
price number,
joindate varchar2(10));
SQL> create table jsp_member
(no number primary key,
name varchar2(20) not null,
id varchar2(15) not null,
passwd varchar2(10) not null,
ssn1 varchar2(6) not null,
ssn2 varchar2(7) not null,
email varchar2(30),
hp1 varchar2(3),
hp2 varchar2(4),
hp3 varchar2(4),
joindate varchar2(10));
create sequence jsp_member_no;
```
**드디어 오류해결 성공하였다. 이전에 오류가 발생하였던 원인은 다음과 같이 추려진다.**
1. ps.close() 등 close 코드를 넣지 않았고, 이로 인해 db에 과부하가 생김
2. 초반에 oracle 이 사용하는 port 를 8080으로 사용하였음. 이는 tomcat 이 사용하는 port 와 같음. -> port 충돌
3. 시스템이 처음에 부팅될 때 실행되었던 oracle.exe 실행파일은 jsp 와 연동시킨 oracle 이 아닌 학교에서 작년 9월에 사용했던 oracle db 이다. 즉, 이 녀석이 먼저 1521 port 를 차지하고 버티니까 새로 들어온 jsp 용 oracle 과의 연결이 차지할 자리가 비좁으니 tomcat 에서 이를 12초정도 후에 종료시킨 것 같다. -> 12초 정도의 연결이 성공 후 종료되는 현상
4. max process 할당값을 500으롤 변경 -> 이 해결법 같은 경우에는 나중에 jsp_project  를 웹 호스팅 했을 시 다른 사용자들 여러명이 db에 접속하여 발생될 수 있는 오류 일 것 같으니 정리해둔다. 이번 오류의 원인은 아닌 것 같다.

# 2020-01-06

### 한글 9글자 -> 27로 인식. book coulmn (name)  크기 변경 20 -> 30
alter table book
  2  modify name varchar2(30);

### 창 띄우기 변경

- 현재탭으로 열기
~~~ html
<input type="button" value="수정" onClick="location.href='http://www.daum.net'">
~~~

- 새로운 탭으로 열기
~~~ html
<input type="button" value="버튼" onClick="window.open('http://www.daum.net')">
~~~


### 도서수정 페이지 완성 - 테스트 성공

### scope 속성 학습

### session, cookie 이용하여 login, logout, 아이디 기억하기 기능 구현

# 2020-01-07
### 회원 수정, 삭제 기능 구현 성공
