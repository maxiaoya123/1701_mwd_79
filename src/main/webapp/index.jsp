<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/4/7
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线答题平台管理</title>
    <style>
        *, *:before, *:after {
            box-sizing: border-box;
        }

        html {
            font-size: 18px;
            line-height: 1.5;
            font-weight: 300;
            color: #333;
            font-family: "Nunito Sans", sans-serif;
        }

        body {

            margin: 0;
            padding: 0;
            height: 100vh;
            background-color: #ecf0f9;
            background-attachment: fixed;
        }

        .content {
            display: flex;
            margin: 0 auto;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            max-width: 1000px;
        }

        .heading {
            width: 100%;
            margin-left: 1rem;
            font-weight: 900;
            font-size: 1.618rem;
            text-transform: uppercase;
            letter-spacing: .1ch;
            line-height: 1;
            padding-bottom: .5em;
            margin-bottom: 1rem;
            position: relative;
        }
        .heading:after {
            display: block;
            content: '';
            position: absolute;
            width: 60px;
            height: 4px;
            background: linear-gradient(135deg, #1a9be6, #1a57e6);
            bottom: 0;
        }

        .description {
            width: 100%;
            margin-top: 0;
            margin-left: 1rem;
            margin-bottom: 3rem;
        }

        .card {
            color: inherit;
            cursor: pointer;
            width: calc(33% - 2rem);
            min-width: calc(33% - 2rem);
            height: 400px;
            min-height: 400px;
            perspective: 1000px;
            margin: 1rem;
            position: relative;
        }
        @media screen and (max-width: 800px) {
            .card {
                width: calc(50% - 2rem);
            }
        }
        @media screen and (max-width: 500px) {
            .card {
                width: 100%;
            }
        }

        .front,
        .back {
            display: flex;
            border-radius: 6px;
            background-position: center;
            background-size: cover;
            text-align: center;
            justify-content: center;
            align-items: center;
            position: absolute;
            height: 100%;
            width: 100%;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            transform-style: preserve-3d;
            transition: ease-in-out 600ms;
        }

        .front {
            background-size: cover;
            padding: 2rem;
            font-size: 1.618rem;
            font-weight: 600;
            color: #fff;
            overflow: hidden;
            font-family: Poppins, sans-serif;
        }
        .front:before {
            position: absolute;
            display: block;
            content: '';
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, #1a9be6, #1a57e6);
            opacity: .25;
            z-index: -1;
        }
        .card:hover .front {
            transform: rotateY(180deg);
        }
        .card:nth-child(even):hover .front {
            transform: rotateY(-180deg);
        }

        .back {
            background: #fff;
            transform: rotateY(-180deg);
            padding: 0 2em;
        }
        .card:hover .back {
            transform: rotateY(0deg);
        }
        .card:nth-child(even) .back {
            transform: rotateY(180deg);
        }
        .card:nth-child(even):hover .back {
            transform: rotateY(0deg);
        }

        .button {
            transform: translateZ(40px);
            cursor: pointer;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            font-weight: bold;
            color: #fff;
            padding: .5em 1em;
            border-radius: 100px;
            font: inherit;
            background: linear-gradient(135deg, #1a9be6, #1a57e6);
            border: none;
            position: relative;
            transform-style: preserve-3d;
            transition: 300ms ease;
        }
        .button:before {
            transition: 300ms ease;
            position: absolute;
            display: block;
            content: '';
            transform: translateZ(-40px);
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            height: calc(100% - 20px);
            width: calc(100% - 20px);
            border-radius: 100px;
            left: 10px;
            top: 16px;
            box-shadow: 0 0 10px 10px rgba(26, 87, 230, 0.25);
            background-color: rgba(26, 87, 230, 0.25);
        }
        .button:hover {
            transform: translateZ(55px);
        }
        .button:hover:before {
            transform: translateZ(-55px);
        }
        .button:active {
            transform: translateZ(20px);
        }
        .button:active:before {
            transform: translateZ(-20px);
            top: 12px;
        }
        div.set_center{
            margin-left: auto;
            margin-right: auto;
            width: 900px;
        }
    </style>

</head>
<body background="1.jpg">
<h3 align="center" >Welcome to Online-Test</h3>
<s:form action="admin" method="post" >
    <div class="set_center">
<table>
    <tr align="center">
    <s:textfield name="username" label="username" size="16"/>
    </tr>
    <tr align="center">
    <s:password name="usrpwd" label="usrpwd" size="16"/>
    </tr>
    <tr align="center">
    <s:textfield name="role" label="role" size="16"/>
    </tr>
    <tr align="center">
    <s:submit value="submit"/>
    </tr>
</table>
    </div>
</s:form>
</body>
</html>
