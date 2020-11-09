# BOOKPAGE / 2020.06-2020.07
<br>
<img src="https://user-images.githubusercontent.com/68896112/98518229-735e1200-22b2-11eb-823d-b7aa905add69.gif">
<br>

## 주제
- 도서 관련 온라인 커뮤니티
<br>
## 개발환경
* 개발도구
  * Eclipse-JEE-Mars-2
  * MySQL WorkBench
  <br>
* 언어
  * JAVA SE1.8 `JDK 8`
  * JSP `model 1`
  * HTML5/CSS3
  * JavaScript/Jquery
  <br>
* 서버(WAS)
  * Apache Tomcat `v8.0`
  <br>
* 커뮤니티
  * Github
  <br>
## 개요
### BOOKPAGE 소개
도서 관련 정보와 북마크를공유하는 웹 커뮤니티 서비스<br>
### 주제 선정 이유
현상황과 맞물려 비대면 접촉 서비스에 대한 수요가
증가할 것으로 예상하여 그에 온라인 커뮤니티를 통한 도서 공유 사이트를 제작하고자 함.<br>
### 주요기능
* 회원가입 / 로그인
* Q&A 게시판
* 이미지 첨부한 북마크 공유 / 갤러리 게시판
* 이메일 보내기 
<br>

## DB 구성
<img src="https://user-images.githubusercontent.com/68896112/98519288-e9af4400-22b3-11eb-8729-46602608c276.png">
<br>
## 기능 구현
* [회원가입](#회원가입)
* [게시판](#게시판)
  * [공지사항 게시판](#공지사항-게시판)
  * [Q&A 게시판](#Q&A-게시판)
* [북마크 게시판](#북마크-게시판)
* [Contact us](#Contact-us)
<br>
## 회원가입
* `jQuery`를 활용하여 비밀번호, 비밀번호 확인 유효성 검사하기
* 유효성 검사를 하는 동시에 `Ajax`를 활용한 아이디 중복 확인 검사하기
* `KAKAO 우편번호 API`를 활용하여 주소 찾기 구현
<img src="https://user-images.githubusercontent.com/68896112/98518755-26c70680-22b3-11eb-8278-4932190599eb.gif">
<br>
## 게시판
### 공지사항 게시판
* 파일 첨부기능 구현
* 게시글 내용과 첨부파일 내역 및 다운로드 구현
<img src="https://user-images.githubusercontent.com/68896112/98518915-67268480-22b3-11eb-8270-dcfe0520324b.png">
<br>
### Q&A 게시판
* num 컬럼으로 게시글 리스트 출력. (답글은 re_ref 컬럼으로 리스트 뿌려주기)
* 페이징 구현
* 로그인 상태만 글쓰기 가능
<img src="https://user-images.githubusercontent.com/68896112/98519015-8c1af780-22b3-11eb-97e2-da2a0d0e14b3.png">
<br>
## 북마크 게시판
* 이미지 업로드 및 댓글등록 및 삭제 구현
* 목록에서 이미지 출력
<img src="https://user-images.githubusercontent.com/68896112/98519092-a2c14e80-22b3-11eb-85bb-c8ecdaae9e7f.png">
<br>
## Contact us
* `javax.mail` 라이브러리와 SMTP를 활용하여 이메일 발송 기능 구현
<img src="https://user-images.githubusercontent.com/68896112/98519182-bec4f000-22b3-11eb-9405-ef1e98afbb29.png">
<br><br>
### Copyright © 2020 YUZU LEE.
