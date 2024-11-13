<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>차량 리포트</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #393939;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #fffefe;
            border-bottom: 1px solid #c8c8c8;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        header button {
            background-color: #9a9a9a;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 8px 15px;
            cursor: pointer;
        }

        header button:hover {
            background-color: #434343;
        }

        .container {
            padding: 20px;
        }

        .section-title {
            font-size: 18px;
            margin-bottom: 15px;
        }

        .report-summary {
            margin-bottom: 20px;
        }

        .recent-list {
            background-color: #bdbdbd;
            padding: 15px;
            border-radius: 10px;
            overflow-y: auto;
        }

        .recent-item {
            margin-bottom: 10px;
            padding: 10px;
            background-color: #8f8f8f;
            color: #fff;
            border-radius: 5px;
        }

        .recent-item:last-child {
            margin-bottom: 0;
        }

        .maintenance-section {
            margin-top: 40px;
            background-color: #cacaca;
            padding: 10px;
            border-radius: 10px;
        }

        .maintenance-bar {
            display: flex;
            align-items: center;
        }

        .maintenance-bar span {
            margin-right: 10px;
            width: 70px;
        }

        .progress-bar {
            width: 100%;
            height: 10px;
            background-color: #ffffff;
            border-radius: 5px;
            position: relative;
            overflow: hidden;
        }

        .progress-bar span {
            display: block;
            height: 100%;
            background-color: #ffa113;
            position: absolute;
            top: 0;
            left: 0;
        }

        .progress-label {
            font-size: 12px;
            color: #000000;
            text-align: right;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<header>
    <button onclick="location.href='addRecord.jsp'">기록추가</button>
    <button onclick="location.href='carSettings.jsp'">차량설정</button>
</header>

<div class="container">
    <div class="report-summary">

        <%!
            Calendar calendar = Calendar.getInstance();
            int month = calendar.get(Calendar.MONTH) + 1;
        %>
        <h2><%= month %>월 리포트</h2>
        <p>주유금액: 150,000원 (2회)</p>
        <p>주행거리: 1,200 km</p>
        <p>최근 주유 일자: yyyy년 mm월 dd일</p>
    </div>

    <div>
        <h3 class="section-title">최근 내역</h3>
        <div class="recent-list">
            <div class="recent-item">
                <p>주유금액: 80,000 원</p>
                <p>주유단가: 1,601원 (가솔린)</p>
                <p>주유량: 49.96L</p>
                <p>주행거리: 170,000 km</p>
            </div>

            <div class="recent-item">
                <p>주유금액: 90,000 원</p>
                <p>주유단가: 1,703원 (가솔린)</p>
                <p>주유량: 52.84L</p>
                <p>주행거리: 170,700 km</p>
            </div>
        </div>
    </div>

    <div class="maintenance-section">
        <h3 class="section-title">소모품 교체 알림</h3>
        <div class="maintenance-bar">
            <span>엔진오일</span>
            <div class="progress-bar">
                <span style="width: 65%;"></span>
            </div>
        </div>
        <div class="progress-label">6,500km / 10,000km</div>

        <div class="maintenance-bar">
            <span>미션오일</span>
            <div class="progress-bar">
                <span style="width: 80%;"></span>
            </div>
        </div>
        <div class="progress-label">16,000km / 20,000km</div>

        <div class="maintenance-bar">
            <span>타이어</span>
            <div class="progress-bar">
                <span style="width: 16%;"></span>
            </div>
        </div>
        <div class="progress-label">800km / 50,000km</div>
    </div>
</div>
</body>
</html>
