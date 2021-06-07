# 💊 어른 허브
![dsfsdfds](https://user-images.githubusercontent.com/75398832/115582736-33d92e80-a304-11eb-8853-a5293dcf62af.PNG)

## 목차
- [소개](#소개)
  - [프로젝트 주제](#프로젝트-주제)
  - [기획의도](#기획의도)
  - [ERD](#ERD)
  - [UML](#UML)
  - [Use Case Diagram](#Use-Case-Diagram)
- [담당한 기능](#담당한-기능)
  -  [상품 목록 정렬 및 카테코리](#상품-목록-정렬-및-카테코리)
  -  [상품 상세페이지](#상품-상세페이지)
  -  [상품 리뷰 작성](#상품-리뷰-작성)
  -  [상품 리뷰 수정](#상품-리뷰-수정)
  -  [상품 리뷰 삭제](#상품-리뷰-삭제)
  -  [상품 카테고리별 검색](#상품-카테고리별-검색)
  -  [담당 기능 소스코드](#담당-기능-소스코드)
## 소개
kh교육원에서 진행한 Spring 기반 팀 프로젝트입니다. Mybatis, Spring MVC 패턴 구현을 통해 동작 원리를 이해하고 쇼핑몰 구조를 구현해보기 위해 진행한 프로젝트입니다.

### 프로젝트 주제
영양제 쇼핑몰

### 기획의도
최근 국내 건강기능 식품 시장이 눈에 띄게 성장을 하고 있고 다양한 브랜드의 시장 진입과 코로나 19 확산에 따른 건강 관심이 증대함에 따라 영양제 라는 아이템에 관심을 가지게 되었습니다.
또한 상품 CRUD, 장바구니 기능, 채팅 기능 등 평소에 구현하고 싶었던 기능을 적용해보기에 적절한 아이템이라는 생각이 들어 영양제 쇼핑몰을 기획해보게 되었습니다.

### ERD
![그림1](https://user-images.githubusercontent.com/75398832/115584213-9252dc80-a305-11eb-98c2-704210ede582.png)


### UML
- 회원 UML
![그림2](https://user-images.githubusercontent.com/75398832/115584282-a26abc00-a305-11eb-8ace-ba2cf7d2c295.jpg)

- **상품 UML(담당한 기능)**
![그림3](https://user-images.githubusercontent.com/75398832/115584654-e65dc100-a305-11eb-9de9-42674c89e199.jpg)

- 장바구니 UML
![그림4](https://user-images.githubusercontent.com/75398832/115584759-01303580-a306-11eb-9912-9489dff582f0.jpg)

- 주문 UML
![그림5](https://user-images.githubusercontent.com/75398832/115584861-160cc900-a306-11eb-8cbd-20a4727d4451.jpg)

### Use Case Diagram
![그림6](https://user-images.githubusercontent.com/75398832/115584955-291f9900-a306-11eb-8d36-ae302b11496d.png)

## 담당한 기능

### 상품 목록 정렬 및 카테코리
![ezgif-6-cbe2f48e5958](https://user-images.githubusercontent.com/75398832/115586382-7d774880-a307-11eb-87ba-9dc4ad7df3a9.gif)

### 상품 상세페이지
![ezgif-6-cb8ee2063a79](https://user-images.githubusercontent.com/75398832/115586793-e78fed80-a307-11eb-87ed-ddf80d761970.gif)

### 상품 리뷰 작성
![ezgif-6-0ba7bb064c59](https://user-images.githubusercontent.com/75398832/115587125-40f81c80-a308-11eb-885d-93745db31159.gif)

### 상품 리뷰 수정
![ezgif-6-4fab589d4a5c](https://user-images.githubusercontent.com/75398832/115587406-a2b88680-a308-11eb-9cb4-d7e844b48aae.gif)

### 상품 리뷰 삭제
![ezgif-6-32d67d23c6a6](https://user-images.githubusercontent.com/75398832/115588395-ab5d8c80-a309-11eb-9ecd-d6f299cf8af2.gif)

### 상품 카테고리별 검색
![ezgif-6-62098da100f9](https://user-images.githubusercontent.com/75398832/115588154-6afe0e80-a309-11eb-9348-c50bfe566dee.gif)

### 담당 기능 소스코드
- View
  - [상품목록](herb/src/main/webapp/WEB-INF/views/product/product.jsp)
  - [상품 상세페이지](herb/src/main/webapp/WEB-INF/views/product/productInfo.jsp)
- Controller
    - [상품 Controller](herb/src/main/java/com/kh/herb/product/controller/ProductController.java)
    - [상품 리뷰 Controller](herb/src/main/java/com/kh/herb/review/controller/ReviewController.java)
 - DAO
    - [상품 DAO](herb/src/main/java/com/kh/herb/product/model/dao/ProductDAO.java)
    - [상품 리뷰 DAO](herb/src/main/java/com/kh/herb/review/model/dao/ReviewDAO.java)
 - Service
    - [상품 Service](herb/src/main/java/com/kh/herb/product/model/service/ProductServiceImpl.java)
    - [상품 리뷰 Service](herb/src/main/java/com/kh/herb/review/model/service/ReviewServiceImpl.java)
 - VO
    - [상품 VO](herb/src/main/java/com/kh/herb/product/model/vo/Product.java)
    - [상품 파일 VO](herb/src/main/java/com/kh/herb/product/model/vo/Product.java)
    - [상품 목록 페이징 VO](herb/src/main/java/com/kh/herb/product/model/vo/ProductPage.java)
    - [상품 리뷰 VO](herb/src/main/java/com/kh/herb/review/model/vo/Review.java)
    - [상품 리뷰 파일 VO](herb/src/main/java/com/kh/herb/review/model/vo/Review.java)
 - Mapper
    - [상품 Mapper](herb/src/main/java/mapper/product-mapper.xml)
    - [상품 파일 Mapper](herb/src/main/java/mapper/product-file-mapper.xml)
    - [리뷰 Mapper](herb/src/main/java/mapper/review-mapper.xml)
 
