<%-- 
    Document   : index
    Created on : Jan 9, 2026, 11:42:23 AM
    Author     : USER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="Description" content="Khóa học coursera trường đại học fptu"
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Khóa Học FPTU</title>
        <style>
            #registerModal h3 {
                text-align: center;
                margin-bottom: 20px;
            }

            #registerModal input {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            /* nhóm nút */
            .btn-group {
                display: flex;
                justify-content: space-between;
                margin-top: 15px;
            }

            /* button chung */
            .btn {
                padding: 8px 16px;
                border-radius: 6px;
                border: none;
                cursor: pointer;
                font-size: 14px;
            }

            /* nút đăng ký */
            .btn-primary {
                background-color: #3498db;
                color: white;
            }

            .btn-primary:hover {
                background-color: #2980b9;
            }

            /* nút đóng */
            .btn-close {
                background-color: white;
                color: #555;
                border: 1px solid #ccc;
            }

            .btn-close:hover {
                background-color: #f2f2f2;
            }
            #overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0,0,0,0.4);

                opacity: 0;
                visibility: hidden;
                transition: opacity 0.3s ease, visibility 0.3s ease;
                z-index: 998;
            }

            #overlay.active {
                opacity: 1;
                visibility: visible;
            }

            #loginModal, #registerModal {
                z-index: 999;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background: white;
                opacity: 0;
                visibility: hidden;
                transition: opacity 0.3s ease, visibility 0.3s ease;
            }

            #loginModal.active, #registerModal.active {
                opacity: 1;
                visibility: visible;
            }
            #registerModal {
                opacity: 0;
                visibility: hidden;
                transition: opacity 0.3s ease, visibility 0.3s ease;
            }
            #registerModal.active {
                opacity: 1;
                visibility: visible;
            }
        </style>
    </head>
    <body>
        <div id="header">
            <h1 style="text-align: center">Chào mừng bạn đến với khóa học coursera FPTU</h1>
            <h2> vui lòng đăng ký tài khoản để truy cập</h2>;
        </div>
        
        
        <hr />
        <div id="overlay" onclick="closeAll()"></div>

        <a data-click-key="login" data-click-value='{"href":"login.jsp"}'>
        </a>
        <button class="btn" onclick="openLogin()">
            Đăng Nhập
        </button>
        <div id="loginModal" style="border:1px solid #ccc; padding:20px; width:300px;">
            <h3 style="text-align: center"> Đăng Nhập </h3>
            <form action="LoginController" method="post">
                Username <input type="text" name="UserName" placeholder="Tên đăng nhập">
                <br><br>
                Password <input type="password" name="PassWord" placeholder="Mật Khẩu">
                <br><br>
                <input type="submit" value="Đăng nhập">
            </form>
        </div>
        <button class="btn" onclick="openRegister()">
            Đăng ký
        </button>
        <div id="registerModal" style="border:1px solid #ccc; padding:20px; width:300px;">
            <h3 style="text-align: center">đăng ký</h3>
            <!-- Bảng thông báo lỗi -->
            <div id="registerMessage" style="display:none; border:1px solid #ccc; padding:10px; margin-bottom:10px; text-align:center; border-radius:5px;">
                <%
                    String msg = (String) request.getAttribute("errorMessage");
                    String success = (String) request.getAttribute("successMessage");
                    if (msg != null) {
                %>
                <span style="color:red;"><%= msg%></span>
                <% } else if (success != null) {%>
                <span style="color:green;"><%= success%></span>
                <% }%>
            </div>
            <form action="RegisterController" method="post">
                <input type="text" name="UserName" placeholder="Tên Đăng nhập"><br><br>
                <input type="password" name="PassWord" placeholder="Mật khẩu"><br><br>
                <input type="password" name="Confirm" placeholder="Xác thực mật khẩu"><br><br>
                <input type="submit" value="Đăng Ký">
            </form>
            <br />
            <button onclick="closeRegister()">Đóng</button>
            <br/>
        </div>
        <script>
            window.onload = function () {
                var registerMsg = document.getElementById("registerMessage");
                // Nếu có thông báo từ server, hiện bảng
            <% if (request.getAttribute("errorMessage") != null || request.getAttribute("successMessage") != null) { %>
                registerMsg.style.display = "block"; // bật bảng thông báo
                openRegister(); // tự động mở modal
            <% }%>
            }
            function showOverlay() {
                document.getElementById("overlay").classList.add("active");
            }

            function hideOverlay() {
                document.getElementById("overlay").classList.remove("active");
            }

            function closeAll() {
                closeLogin();
                closeRegister();
                hideOverlay();
            }

            function openLogin() {
                closeRegister();
                showOverlay();
                document.getElementById("loginModal").classList.add("active");
            }

            function closeLogin() {
                document.getElementById("loginModal").classList.remove("active");
            }

            function openRegister() {
                closeLogin();
                showOverlay();
                document.getElementById("registerModal").classList.add("active");
            }

            function closeRegister() {
                document.getElementById("registerModal").classList.remove("active");
            }
        </script>
        
        
        <div id="tailer">
            <p><span class="inf">
                Liên Hệ:
                </span>0******9</p>
            <p><span class="inf">
                <a href="mailto:lonhkim85@gmail.com?subject=phản hồi từ web&body=Xin chào, tôi muốn liên hệ bạn để đăng ký khóa học">Gửi mail</a>
                   </span>
        </div>
        
    </body>
</html>

