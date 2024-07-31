<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medi Express - 빠른 배송 안전한 의료용품</title>
    <link href="/resources/img/titleIcon.png" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" href="/resources/css/Product_orderEndPage.css" type="text/css">
    <script src="component\project3_header_components.js" defer></script>
    <script src="component\project3_footer_components.js" defer></script>
    <script src="component\side_bar_components.js" defer></script>
</head>
<body>
    <project3-header></project3-header>
    <side-bar></side-bar>
    <main>
        <div class="loading">
            <div class="loading_text_head">
                <h2>주문이 진행 중입니다</h2>
            </div>
            <div class="item">
                <div class="item_box">
                    <div></div>
                </div>
                <div class="item_box2">
                    <div></div>
                    <div></div>
                    <div class="item_box_icon">
                        <div></div>
                        <div></div>
                    </div>
                </div>
            </div>
            <div class="box_icon">
                <div class="box">
                    <div></div>
                </div>
                <div class="box_2">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
            <div class="conveyor_belt">
                <div class="roller">
                    <div></div>
                </div>
                <div class="roller">
                    <div></div>
                </div>
                <div class="roller">
                    <div></div>
                </div>
            </div>
            <div class="loading_text">
                <h2>잠시만 기다려주세요 😊</h2>
            </div>
        </div>
        <section>
            <div class="order_complete">
                <h1>주문 완료!</h1>
                <div class="icon_container">
                    <div class="check_icon">
                        <div class="check"></div>
                    </div>
                    <div class="order_after_box_icon">
                        <div class="order_box">
                            <div></div>
                        </div>
                        <div class="order_box_2">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                </div>
                <div class="order_complete_text">
                    <p>상품은 출고 후 1일 뒤에 도착할 예정이에요</p>
                    <p>주문은 마이페이지에서 확인할 수 있어요</p>
                    <button onClick="location.href='/'">홈으로</button>
                </div>
            </div>
        </section>
    </main>
    <project3-footer></project3-footer>
    <script rel="javascript" type="text/javascript" src="js/buy.js"></script>
</body>
</html>