<%-- 
    Document   : danhap
    Created on : Jan 9, 2026, 12:14:49 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, sans-serif;
            }
            .top-bar {
                background: #f5f5f5;
                padding: 5px;
                border: 20px;
            }

            .top-baration {
                background: #ccc;
                padding: 2px;
                border: 10px;
            }

            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 15px 20px;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }
            .search-box input{
                padding: 8px 15px;
                border: 1px solid #ffffff;
                border-radius: 30px;
                width: 250px;
            }
            .logo {
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .logo img {
                height: 40px;
            }

            .logo span {
                color: #ff6600;
                font-weight: bold;
                font-size: 18px;
            }
            .main-nav {
                display: flex;
                gap: 25px;
            }
            .main-nav a{
                text-decoration: none;
                color: #333;
                font-size: 14px;
                font-weight: 500;
            }
            .text-search{
                justify-content: center;
                display: flex;
                flex: 1;
            }
            .language {
                font-size: 14px;
                color: #333;
            }

            .language .active {
                color: #ff6600;
                font-weight: bold;
            }
            .laguage {
                cursor: pointer;
                color: #ff6600;
            }
            top-bar-left {
                display: flex;
                gap: 20px;
                align-items: center;
                justify-content: space-between;
            }

            .top-bar-item {
                display: flex;
                align-items: center;
                gap: 5px;
                text-decoration: none;
                color: #333;
                transition: color 0.3s ease;
            }

            .top-bar-item svg {
                width: 18px;
                height: 18px;
                fill: #ff8800;
            }

            .top-bar-item:hover {
                color: #ff8800;
            }
            .contact-nav {
                display: flex;
                gap: 15px;
            }
            .language-select {
                padding: 2px;
                border: 1px solid #ccc;
                border-radius: 4px;
                width: 100px;
                display: flex;
            }
            .top-bar-right {
                display: flex;
                gap: 15px;
                align-items: center;
            }
            .header-center {
                padding: 15px;
                align-content: center;
            }
            .provider {
                padding: 4px;
                align-content: center;
                justify-content: space-between;
            }
            .card-content {

            }
            .provider-name {
                text-decoration: none;
            }

            h1 {
                font-size: 28px;
                margin-bottom: 30px;
                color: #1f1f1f;
            }

            .cards-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                gap: 20px;
            }

            .card {
                background: white;
                border-radius: 12px;
                overflow: hidden;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                transition: transform 0.3s, box-shadow 0.3s;
                cursor: pointer;
                text-decoration: none;
                color: inherit;
                display: block;
            }

            .card:hover {
                transform: translateY(-4px);
                box-shadow: 0 4px 16px rgba(0,0,0,0.15);
            }

            .card-image {
                width: 100%;
                height: 160px;
                position: relative;
                overflow: hidden;
            }

            .card-image.deep-learning {
                background: linear-gradient(135deg, #2d5bff 0%, #1a3ba8 100%);
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                font-size: 24px;
                font-weight: bold;
                text-align: center;
                padding: 20px;
            }

            .card-image.deep-learning::before {
                content: '';
                position: absolute;
                top: -20px;
                left: -20px;
                width: 100px;
                height: 100px;
                background: #ff6b6b;
                border-radius: 50%;
            }

            .card-image img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .skills-badge {
                position: absolute;
                top: 10px;
                right: 10px;
                background: white;
                padding: 4px 12px;
                border-radius: 20px;
                font-size: 12px;
                font-weight: 500;
                display: flex;
                align-items: center;
                gap: 4px;
            }

            .card-content {
                padding: 20px;
            }

            .provider {
                display: flex;
                align-items: center;
                gap: 8px;
                margin-bottom: 12px;
            }

            .provider-logo {
                width: 20px;
                height: 20px;
            }

            .provider-name {
                font-size: 13px;
                color: #666;
            }

            .card-title {
                font-size: 18px;
                font-weight: 600;
                margin-bottom: 8px;
                color: #1f1f1f;
            }

            .card-type {
                font-size: 13px;
                color: #666;
            }
            .containeration {
                max-width: 1200px;
                margin: 0 auto;
            }
            .container-main-header{
                max-width: 1200px;
                padding: 5px 20px;
                margin: 0 auto;
                justify-content: space-between;
                align-items: center;
                display: flex;
            }
            .card-grid {
                
            }
            .card{
              
            }
        </style>
    </head>
    <body>
        <div class="main-header">
            
            <div class="top-bar">
                <div class="container-main-header">
                    <div class="top-bar-left">
                        <nav class="contact-nav">
                            <a href="tel:+8433214439" class="top-bar-item">
                                <svg viewBox="0 0 24 24"><path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"></path></svg>
                                +84 33493399
                            </a>
                            <a href="mailto:loc@gmail4user.com" class="top-bar-item">
                                <svg viewBox="0 0 24 24"><path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"></path></svg>
                                lonhkim85@gmail.com
                            </a>
                        </nav>
                    </div>
                    <div class="search-box">
                        <input type="text" placeholder="Search">
                    </div>
                    <select class="language-select">
                        <option>Vietnamese</option>
                        <option>English</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
        <div class="Main-header">
            <div class="container">
                <div class="logo">
                    <img src="images/banner-png2.webp" alt="FPT Education">
                    <span>FPT Course</span>
                    <nav class="main-nav">
                        <a href="#">Courses</a>
                        <a href="#">Learning Progress</a>
                        <a href="#">Forums</a>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="containeration">
        <h1>Most Popular Certificates</h1>

        <div class="cards-grid">
            <!-- Deep Learning Card -->
            <a href="" target="_blank" class="card">
                <div class="card-image">
                    <img src="images/banner-jpg2.jpg" loading="lazy">
                </div>
                <div class="card-content">
                    <div class="provider">
                        <span class="provider-name"></span>
                    </div>
                    <h2 class="card-title">Deep Learning</h2>
                    <p class="card-type">Specialization</p>
                </div>
            </a>

            <a href="" target="_blank" class="card">
                <div class="card-image">
                    <img src="images/course-web01.jpg" loading="lazy">
                    <div class="skills-badge">
                    </div>
                </div>
                <div class="card-content">
                    <div class="provider">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                        <circle cx="12" cy="12" r="12" fill="#FF6C00"/>
                        <g fill="#FFFFFF">
                        <path d="M 5 8 L 5 16 L 6.2 16 L 6.2 12.5 L 8.5 12.5 L 8.5 11.5 L 6.2 11.5 L 6.2 9 L 9 9 L 9 8 Z"/>
                        <path d="M 10 8 L 10 16 L 11.2 16 L 11.2 12.5 L 13 12.5 C 13.8 12.5 14.3 12 14.3 11.2 L 14.3 9.3 C 14.3 8.5 13.8 8 13 8 Z M 11.2 9 L 13 9 C 13.2 9 13.3 9.1 13.3 9.3 L 13.3 11.2 C 13.3 11.4 13.2 11.5 13 11.5 L 11.2 11.5 Z"/>
                        <path d="M 15 8 L 15 9 L 16.5 9 L 16.5 16 L 17.7 16 L 17.7 9 L 19.2 9 L 19.2 8 Z"/>
                        </g>
                        </svg>
                        <span class="provider-name">Code Web</span>
                    </div>
                    <h2 class="card-title">Html, Css, JS</h2>
                    <p class="card-type">Professional Certificate</p>
                </div>
            </a>

            <a href="" target="_blank" class="card">
                <div class="card-image">
                    <img src="images/banner-jpg3.jpg" loading="lazy">
                </div>
                <div class="card-content">
                    <div class="provider">
                        <span class="provider-name">AI</span>
                    </div>
                    <h2 class="card-title">Python</h2>
                    <p class="card-type">Professional Certificate</p>
                </div>
            </a>

            <a href="" target="_blank" class="card">
                <div class="card-image">
                    <img src="images/Courses-jpg.jpg" loading="lazy">
                    <div class="skills-badge">
                    </div>
                </div>
                <div class="card-content">
                    <div class="provider">
                        <span class="provider-name">SE</span>
                    </div>
                    <h2 class="card-title">Lập trình nhúng</h2>
                    <p class="card-type">Professional Certificate</p>
                </div>
            </a>
        </div>
    </div>
    
</body>

</html>
