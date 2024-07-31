# 👨‍⚕️Project_3_MediExpress

의료 기관과 개인이 필요로하는 의료 소모품을 쉽게 찾고 구매할 수 있는 가상의 온라인 플랫폼(MediExpress)을 제공하여
주문, 실시간 배송 조회가 가능한 시스템, 물건 재고 관리 프로그램을 제작하는 목적의 프로젝트 입니다.

[메디 익스프레스 웹 페이지 샘플은 여기를 참고해주세요!](https://gwanhoyun.github.io/mediExpress/)

**웹 페이지 샘플은 다음과 같은 기능을 체험할 수 있습니다.**

1. 메인페이지 - 마이페이지 - 구매 내역
2. 드롭다운 전체 메뉴 - 의료소모품 - 주사기/주사침 - 일회용 주사기 구매 탭 - 바로 구매 - 쿠폰/포인트 & 주문하기
3. 의료소모품 메뉴 - 주사기/주사침 - 일회용 주사기 구매 탭 - 바로 구매 - 쿠폰/포인트 & 주문하기
   
💀실제 구현한 기능과 차이가 있을 수 있습니다.💀

- - - - -
## MySQL - ERD
![image](https://github.com/user-attachments/assets/fe01994a-7316-41ca-8ac9-8ea245aa79cd)
- - - - -

## 프로젝트 개요

  + 🕐2024년 7월 11일 ~ 2024년 7월 31일
  + 🎨[메인 페이지 디자인, UI UX 구상, 각종 배너 제작(figma)](https://www.figma.com/proto/ABf8mOFiQsLmuNjab4TIw7/Untitled?node-id=0-1&t=uRDSQF3MbhAuHNfd-1)
  + 👨‍💻html, css, javascript를 이용한 각종 페이지 마크업
  + 👨‍💻물건 발주 요청, 실시간 배송 조회 시스템, 의료 소모품 재고 현황 확인 및 관리 시스템 구현
  
- - - - -
## 개발 환경

  + window 10
  + eclipse Photon Release (4.8.0)
  + Visual Studio Code 1.90.2
  + MySQL 8.0 CE
  + JSP (Java – 1.8.0_351)

- - - - -

## 프로젝트 기획

*프로젝트는 실제 의료 프로세스에 대한 지식이 부족함. 임의로 프로세스를 예상하여 구현함을 밝힘*

  + **실제와 유사한 형태의 가상 페이지 구현**
   
      1. 실제 운영 중인 각종 의료 소모품 판매처를 참고해 페이지 디자인을 진행함.

      2. 배너 등 이미지가 필요할 경우 직접 제작(photoshop, illustrator, figma) *상품 이미지는 제외*

      3. javascript로 코드 유지 / 보수를 쉽도록 html에 요소가 추가 될 경우 스크립트 수정 없이 자동으로 적용 되도록 함.
                *여기에 코드 추가 예정*

      5. header, footer, 사이드 편의 기능와 같은 재사용성이 높은 요소를 웹 컴포넌트(React와 유사한 컴포넌트화)로 구현하여 재사용성을 높힘(component폴더 참고).

      6. DB에 저장된 회원 정보를 바탕으로 로그인 가능하도록 구현
   
  + **상품 구매**
   
      1. 구매 페이지에 상품 옵션을 선택하고 삭제할 수 있도록 구현함.

      2. 상품 이미지가 존재하지 않을 경우 '이미지 준비중.png'파일이 출력되도록 함.

      3. 구매를 요청할 상품을 확인 할 수 있도록 구현함.

      4. 사용자가 담은 상품을 기준으로 상품 금액을 계산하도록 스크립트 작성.

      5. 포인트, 쿠폰 선택을 할 시, 사용자가 지불할 총 금액에 반영되도록 스크립트 작성.[(상품금액-사용할 포인트)*(할인 적용 비) = 지불 금액]

      6. 상품 사진, 상품 번호, 상품명, 상품 가격은 DB의 데이터를 기반으로 출력 됨.

      7. *빠진내용 있으면 추가해주세용*
      
  + **주문 내역**
   
      1. 마이페이지를 통해 확인 가능.

      2. 주문한 상품의 배송 추적, 구매 명세서를 확인 할 수 있음.

      3. *내용 추가해주세용*
      
  + **택배기사 배송 관련**
       
      1. 카카오맵 API를 기반으로 임의 위치에 배송 Hub와 배송지를 특정함.

      2. 좌표를 DB에 저장함.

      3. *내용 추가해주세용*

    
- - - - -

## 구현 예시 (웹 디자인, 프론트엔드)

[프론트엔드 구동 예시는 여기를 확인해주세요😊](https://gwanhoyun.github.io/mediExpress/)

  + **웹 디자인**
  
    1. 1440px 기준 12colums, gutter 20px, margin 60px 기준 적응형 웹으로 디자인 함.

    2. 배너 이미지는 직접 제작 (글로벌메디컬대학병원 배너는 이미지 가공함)
    
  + **메인 페이지 (index.html)**

    1. for 반복문을 사용해 이미지 슬라이드(캐러셀)에 이미지 추가를 위한 li 태그 추가 시, 스크립트 수정 없이도 작동 할 수 있도록 구현함.
      ```
let firstSlide = 1;
let slideTrigger = true;
let autoSlideInterval = setInterval(nextSlide, 5000);
const slides = document.querySelectorAll(".slider-container li");
const lastSlide = slides.length;
const presentSlideIndexCount = document.querySelector(".present_slide_index");
const totalSlideIndexCount = document.querySelector(".total_slide_index");
const slideCount2Container = document.querySelector(".slide_count_2");
const slideCount2= document.querySelector(".slide_count_2 div");


for(let i = 0; i < lastSlide; i++ ){
    const createSlideCount2 = document.createElement('div');
    createSlideCount2.className = 'count_' + (i + 1);
    slideCount2Container.appendChild(createSlideCount2);
    createSlideCount2.addEventListener('click', selectSlide);
}


function selectSlide(event) {
    const className = event.target.className; // 예: 'count_3'
    const slideIndex = parseInt(className.split('_')[1]); // '3'을 추출하여 숫자로 변환
    firstSlide = slideIndex; // firstSlide를 현재 슬라이드 인덱스로 설정
    showSlide(slideIndex); // 슬라이드 표시
    resetAutoSlide()
}




function showSlide(slideIndex) {
    slides.forEach(slide =>{
        slide.style.display = 'none';
        slide.style.animation = 'none';
    });
    document.querySelector('.slide' + slideIndex).style.display = 'block';
    document.querySelector('.slide' + slideIndex).style.animation = 'slideAnimation 1s';
    presentSlideIndexCount.textContent = slideIndex;


    document.querySelectorAll('.slide_count_2 div').forEach(countDiv => {
        if(firstSlide === 1){
            countDiv.style.backgroundColor = '#999';
        }else{
            countDiv.style.backgroundColor = '#0079e9';
        }   
    });
    if(firstSlide === 1){
        document.querySelector('.count_'+ slideIndex).style.backgroundColor = '#000';
    }else{
        document.querySelector('.count_'+ slideIndex).style.backgroundColor = '#fff';
    }
    
}
totalSlideIndexCount.textContent = lastSlide;


function nextSlide() {
    firstSlide = firstSlide === lastSlide ? 1 : firstSlide + 1;
    showSlide(firstSlide);
    resetAutoSlide();
}


function prevSlide() {
    firstSlide = firstSlide === 1 ? lastSlide : firstSlide - 1;
    showSlide(firstSlide);
    resetAutoSlide();
}


function resetAutoSlide() {
    clearInterval(autoSlideInterval);
    autoSlideInterval = setInterval(nextSlide, 5000);
    if(!slideTrigger){
        slideTrigger = true;
        document.querySelector('.stop_slide_btn div:nth-child(1)').style.display = 'block';
        document.querySelector('.stop_slide_btn div:nth-child(2)').style.display = 'block';
        document.querySelector('.stop_slide_btn div:nth-child(3)').style.display = 'none';
    }
}




function slideOnOff() {
    if (slideTrigger) {
        clearInterval(autoSlideInterval); // 자동 슬라이드 타이머 제거 (자동 슬라이드 꺼짐)
        slideTrigger = false; // 자동 슬라이드 상태 변경 (꺼짐)
        document.querySelector('.stop_slide_btn div:nth-child(1)').style.display = 'none';
        document.querySelector('.stop_slide_btn div:nth-child(2)').style.display = 'none';
        document.querySelector('.stop_slide_btn div:nth-child(3)').style.display = 'block';
    } else {
        resetAutoSlide(); // 자동 슬라이드 타이머 재설정 (자동 슬라이드 켜짐)
        slideTrigger = true; // 자동 슬라이드 상태 변경 (켜짐)
        document.querySelector('.stop_slide_btn div:nth-child(1)').style.display = 'block';
        document.querySelector('.stop_slide_btn div:nth-child(2)').style.display = 'block';
        document.querySelector('.stop_slide_btn div:nth-child(3)').style.display = 'none';
    }
}


document.querySelector(".next").addEventListener('click', nextSlide);
document.querySelector(".prev").addEventListener('click', prevSlide);
document.querySelector(".stop_slide").addEventListener('click', slideOnOff)
      ```
    2. 페이지네이션 도트(인디케이터)를 통해 원하는 배너를 출력할 수 있도록 함.

    3. clearInterval()함수를 사용해 배너 정지/시작 기능

    4. 재사용 가능성이 높은 부분은 컴포넌트화하여 재사용성을 높힘.(component폴더 참고)
   
  + **상품 페이지 (view_item.html)**

    1. 상품 옵션을 선택, 삭제하고 중복된 옵션을 선택할 경우 상품 구매 개수가 늘어나도록 함.
   
  + **주문 페이지 (order_page.html)**

    1. 주문 정보의 가격으로 상품 금액이 계산되도록 함.

    2. 쿠폰/ 포인트가 총 결제 예상금액에 반영됨.((상품 금액-사용 포인트)*쿠폰 할인률=지불 금액)

    3. 포인트는 총 결제 예상금액의 1% 만큼 계산되도록 함.

  + **구매 완료 페이지 (buy.html)**

    1. 로딩 후 구매가 완료되는 것처럼 보이게 함.

    2. 이미지 파일 없이 <div>요소로 아이콘 제작.

    3. keyframes로 애니메이션 추가.

- - - - -
## 구현 예시 (백엔드)

**장종민** 

- - - - -
## 구현 예시 (백엔드)

**주진성** 


- - - - -
  ## 구현 예시 (백엔드)

**강동현** 


- - - - - 

- - - - -

## 🤸‍♂️팀원 소개

  **윤관호(프로젝트 팀장)**
  
    + UX, UI, 웹페이지 디자인 담당
    + HTML, CSS, JAVASCRIPT 프론트엔드 담당
    + 디지털 리소스 제작, 관리
      
  **장종민**
  
    + 데이터 베이스 설계 및 최적화 담당
    + 로그인, 소셜 로그인 기능 구현
      
  **강동현**
  
    + 데이터 베이스 설계 및 최적화 담당
    + 회원가입 기능 구현
    + 아이디 / 비밀번호 찾기 구현
    + ppt 제작 및 발표
 
  **주진성**
  
    + 증명서 출력, 자동화 기능 구현
    + 차트 페이지 구현
    
