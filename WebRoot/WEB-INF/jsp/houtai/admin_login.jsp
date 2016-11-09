<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="keywords"
			content="邮件，邮箱，电子邮件，电子邮箱，网易邮箱，163邮箱，免费邮箱，mail，email，网盘tfy" />
		<meta name="description"
			content="tfy网易163免费邮箱--中文邮箱第一品牌。容量自动翻倍，支持50兆附件,免费开通手机号码邮箱赠送3G超大附件服务。支持各种客户端软件收发，垃圾邮件拦截率超过98%。" />
		<title>163网易免费邮--中文邮箱第一品牌</title>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/iamges/ico/favicon.ico" />
		<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
		<style type="text/css">
/* css reset */
body {
	color: #000;
	background: #fff;
	font-size: 12px;
	line-height: 166.6%;
	text-align: center;
}

body,input,select,button {
	font-family: verdana
}

h1,h2,h3,select,input,button {
	font-size: 100%
}

body,h1,h2,h3,ul,li,form,p,img {
	margin: 0;
	padding: 0;
	border: 0
}

input,button,select,img {
	margin: 0;
	line-height: normal
}

select {
	padding: 1px
}

ul {
	list-style: none
}

select,input,button,button img,label {
	vertical-align: middle
}

header,footer,section,aside,nav,hgroup,figure,figcaption {
	display: block;
	margin: 0;
	padding: 0;
	border: none
}

a {
	text-decoration: none;
	color: #959595
}

a:hover {
	color: #626262
}

.fontWeight {
	font-weight: 700;
}

/* global */
.unvisi {
	visibility: hidden
}

/* backgroundImage */
.themeCtrl a,.loginFormIpt,.headerIntro,.loginIcoCurrent,.loginIcoNew,.themeText li,.domain,.whatAutologin,.btn,.dialogbox .hd .rc,.dialogbox .hd,.btn-moblogin,.btn-moblogin2,.ico,.locationTestTitle,.verSelected,.servSelected,.locationTestTitleClose,.ext-4free,#extText li,#extMobLogin li,#mobtips_arr,#mobtips_close
	{
	background-image: url(http://mimg.127.net/index/163/img/2013/bg_v1.png)
}

.headerLogo,.headerIntro,.headerNav,#headerEff,.footerLogo,.footerNav,.loginIcoCurrent,.loginIcoNew,.loginFormTh,.loginFormTdIpt,.domain,#whatAutologinTip,#mobtips,#mobtips_arr,#mobtips_close
	{
	position: absolute
}

/* ico */
.ico-uid {
	width: 14px;
	height: 16px;
	background-position: -154px -64px
}

.ico-pwd {
	width: 14px;
	height: 16px;
	background-position: -178px -64px
}

.ico-arr {
	display: inline-block;
	width: 7px;
	height: 12px;
	vertical-align: baseline;
	background-position: -160px -112px;
}

.ico-arr-d {
	background-position: -160px -110px;
}

.loginFormConf a:hover .ico-arr-d,.ico-arr-d-focus {
	background-position: -176px -110px;
}

*+html .ico-arr-d {
	background-position: -160px -112px;
}

*+html .loginFormConf a:hover .ico-arr-d,*+html .loginFormConf a:hover .ico-arr-d,*+html .ico-arr-d-focus
	{
	background-position: -176px -112px;
}

/* header */
.header {
	width: 1000px;
	height: 64px;
	position: relative;
	margin: 0 auto;
	z-index: 2;
	overflow: hidden;
}

.headerLogo {
	top: 17px;
	left: 50px
}

.headerIntro {
	height: 28px;
	width: 144px;
	display: block;
	background-position: 0 -64px;
	top: 17px;
	left: 194px
}

.headerNav {
	top: 21px;
	right: 50px;
	width: 400px;
	text-align: right;
	color: #cfd0d0;
}

.headerNav a {
	margin-left: 13px
}

.headerNav .last {
	margin-left: 0;
}

#headerEff {
	
}

/* main */
.main {
	height: 600px;
	background: #fff;
	position: relative;
	min-width: 1000px;
}

#mainCnt {
	width: 1000px;
	height: 600px;
	overflow: visible;
	margin: 0 auto;
	position: relative;
	clear: both
}

#theme {
	height: 600px;
	width: 1000px;
	position: absolute;
	overflow: hidden; /*z-index:1;*/
	background-position: top right;
	background-repeat: no-repeat;
	text-align: left;
	top: 0;
	left: 0;
}

.themeLink {
	height: 274px;
	width: 430px;
	display: block;
	outline: 0;
}

.themeText {
	margin-left: 26px;
}

.themeText li {
	line-height: 22px;
	-line-height: 24px;
	height: 24px;
	color: #858686;
	text-indent: 12px;
	background-position: -756px -72px;
	background-repeat: no-repeat
}

.themeText li a {
	color: #005590;
	text-decoration: underline;
}

.login {
	width: 295px;
	height: 460px;
	padding: 14px 16px 15px;
	top: 55px;
	left: 50%;
	margin-left: 90px;
	text-align: left;
	position: absolute;
	z-index: 2;
	background: url(http://mimg.127.net/index/163/img/2013/login_v2.png)
		no-repeat;
	-background-image:
		url(http://mimg.127.net/index/163/img/2013/login_ie6_v2.png);
}

.unishadow {
	box-shadow: 0px 1px 3px 0 rgba(0, 0, 0, 0.2);
	-webkit-box-shadow: 0px 1px 3px 0 rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 1px 3px 0 rgba(0, 0, 0, 0.2);
}

.loginFunc {
	width: 100%;
	height: 47px;
	overflow: hidden;
	clear: both;
}

.loginFuncNormal,.loginFuncMobile {
	width: 148px;
	height: 100%;
	overflow: hidden;
	position: relative;
	line-height: 46px;
	float: left;
	font-size: 14px;
	text-align: center; +
	line-height: 48px;
	color: #626262;
	cursor: pointer;
}

.loginFuncMobile {
	width: 147px;
	border-right: none;
}

.loginIcoCurrent {
	width: 24px;
	height: 24px;
	left: 26px;
	top: 9px;
	display: none;
}

.loginIcoNew {
	width: 21px;
	height: 10px;
	font-size: 0;
	background-position: -684px 0;
	left: 135px;
	top: 12px;
}

.tab-2 {
	background-position: -323px 0;
}

.tab-2 .loginFuncMobile .loginIcoCurrent,.tab-1 .loginFuncNormal .loginIcoCurrent,.tab-2 #extMobLogin,.tab-1 #extText,.tab-11 #extVerSelect,.tab-22 #extMobLogin2,.tab-2 #lfBtnReg2,.tab-1 #lfBtnReg1,.tab-2 .loginFormThMob
	{
	display: block;
}

.tab-2 #lfVerSelect,.tab-2 #extVerSelect,.tab-22 #extMobLogin,.tab-11 #extText,.tab-2 #extText,.tab-2 #lfBtnReg,.tab-1 #lfBtnReg2,.tab-22 #lfBtnMoblogin,.tab-2 .loginFormThAcc
	{
	display: none;
}

/* form */
.loginForm {
	position: relative;
	height: 380px;
	padding-top: 30px;
}

#login163 {
	height: 215px;
}

.loginFormIpt {
	position: relative;
	width: 240px;
	height: 42px;
	line-height: 42px;
	margin: 0 0 18px 25px;
	padding-right: 5px;
	clear: both;
	border-radius: 4px;
	background-position: 0 -352px;
	z-index: 2
}

.loginFormIpt .ico {
	position: absolute;
	left: 9px;
	top: 13px;
	z-index: 1;
}

.loginFormIpt-over {
	
}

.loginFormIpt-focus {
	box-shadow: 0 0 5px rgba(2, 145, 252, .5);
}

.loginFormIpt-focus .placeholder {
	color: #C9C9C9;
}

.loginFormBtn {
	position: relative;
	width: 245px;
	height: 43px;
	margin: 16px 0 0 25px
}

.loginFormTh {
	width: 36px;
}

.loginFormThMob {
	display: none;
}

.loginFormTdIpt {
	width: 205px;
	padding: 9px 0 10px;
	ime-mode: disabled;
	height: 21px;
	top: 1px;
	left: 28px;
	font-size: 14px;
	font-weight: 700;
	border: none;
	font-family: verdana;
	line-height: 21px;
	color: #92a4bf;
	background: transparent !important;
}

.loginFormTdIpt:focus {
	outline: 0;
}

.loginFormTdIpt-focus {
	color: #333;
	font-weight: 700;
}

.showPlaceholder .placeholder {
	visibility: visible;
	cursor: text;
}

.placeholder {
	color: #C9C9C9;;
	font-size: 14px;
	position: absolute;
	left: 30px;
	top: 14px;
	line-height: 14px;
	visibility: hidden;
	background: none;
}

.domain {
	width: 80px;
	height: 33px;
	background-position: 0 -112px;
	line-height: 999em;
	overflow: hidden;
	display: block;
	right: 8px;
	top: 4px;
}

#idInputTest {
	visibility: hidden;
	float: left;
	font-size: 14px;
	font-weight: 700;
}

.loginFormCheck {
	height: 13px;
	line-height: 13px;
	color: #555;
	margin-left: 25px;
	clear: both;
	width: 245px;
	position: relative;
	z-index: 1;
}

.loginFormCheckInner {
	height: 14px;
	width: 150px;
	float: left;
	position: relative;
}

.forgetPwdLine {
	text-align: right
}

#capsLockHint {
	position: absolute;
	top: 42px;
	left: 0px;
	padding: 4px 8px;
	line-height: 12px;
	background-color: #ffffcc;
	border: 1px solid #d7d7d7;
	color: #555;
	z-index: 2;
}

#remAutoLogin {
	visibility: hidden;
	position: absolute;
	left: 0;
}

.ico-checkbox {
	display: inline-block;
	width: 13px;
	height: 13px;
	background-position: -40px -160px;
	vertical-align: middle;
	cursor: pointer;
}

.autoLogin-checked .ico-checkbox {
	background-position: -40px -180px;
}

#remAutoLoginTxt,.forgetPwd {
	color: #848585;
}

#remAutoLoginTxt:hover,.forgetPwd:hover {
	color: #626262;
}

.loginFormCbx {
	width: 13px;
	height: 13px;
	padding: 0;
	overflow: hidden;
	margin: 0;
	vertical-align: middle;
}

.whatAutologin {
	display: inline-block;
	vertical-align: top;
	width: 14px;
	height: 14px;
	background-position: -112px -112px;
	line-height: 999em;
	overflow: hidden
}

#whatAutologinTip {
	z-index: 9;
	width: 180px;
	height: 36px;
	background-color: #fffde4;
	border: 1px #dfb86d solid;
	left: 0px;
	top: 16px;
	text-align: left;
	padding: 5px 10px;
	line-height: 18px;
	color: #dc9632;
	display: none;
	border-radius: 4px
}

.btn {
	width: 110px;
	height: 38px;
	float: left;
	text-align: center;
	cursor: pointer;
	border: 0;
	padding: 0;
	font-weight: 700;
	font-size: 14px;
	display: inline-block;
	vertical-align: baseline;
	line-height: 38px;
	outline: 0;
	background-color: transparent;
	border-radius: 3px;
}

.btn-login {
	background-position: 0 -208px;
	color: #fff;
	box-shadow: 0 2px 5px rgba(0, 28, 88, .3)
}

.btn-login-hover {
	background-position: 0 -256px;
}

.btn-login-active {
	background-position: 0 -304px;
	color: #b5d1ee;
}

.btn-reg {
	background-position: -117px -208px;
	color: #6d798c;
	float: right;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .1);
}

.loginFormBtn .btn-reg-hover {
	background-position: -117px -256px;
	color: #347bc7;
}

.loginFormBtn .btn-reg-active {
	background-position: -117px -304px;
	color: #6d798c;
}

.btn-moblogin2 {
	width: 202px;
	height: 37px;
	text-align: center;
	font-size: 14px;
	background-position: -396px -288px;
	background-color: #fff;
	margin-top: 30px;
	float: none;
	margin-left: 25px;
}

.loginFormConf {
	height: 12px;
	line-height: 14px;
	margin-left: 25px;
	margin-top: 12px;
	clear: both;
	width: 245px;
	position: relative;
	color: #848585;
	z-index: 1;
}

.loginFormVer {
	float: left;
	width: 160px;
}

.loginFormService {
	float: right;
	text-align: right;
}

.loginFormVerList {
	width: 140px;
	position: absolute;
	padding: 1px;
	background: #fff;
	border: 1px solid #b7c2c9;
	top: -5px;
	top: -4px\9;
	left: 33px;
	display: none;
}

.loginFormVerList li a {
	height: 22px;
	line-height: 22px;
	width: 140px;
	overflow: hidden;
	color: #848585;
	display: block;
	text-indent: 22px;
}

.loginFormVerList li a:hover {
	background-color: #eef3f8;
}

.loginFormVerList li a.verSelected {
	color: #5B8CCA;
	background-position: -250px -58px;
	background-repeat: no-repeat;
}

/* ext */
#extVerSelect,#extText,#extMobLogin,#extMobLogin2 {
	display: none;
}

.ext {
	width: 250px;
	height: 43px;
	position: absolute;
	bottom: 0;
	left: 12px;
	padding: 0 10px;
	border-top: 1px solid #e4f0f7;
}

#extText {
	margin-top: 7px;
	line-height: 12px;
}

#extText li {
	margin-bottom: 5px;
	padding-left: 7px;
	background-position: -240px -123px;
	background-repeat: no-repeat;
}

#extText li a {
	color: #9bacc6;
}

#extText li a:hover {
	color: #5B8CCA;
}

#extMobLogin {
	margin-top: 7px;
	text-align: center;
	line-height: 12px;
}

#extMobLogin li {
	margin-bottom: 9px;
	padding-left: 7px;
	color: #848585;
	height: 12px;
	line-height: 12px;
	background-position: -240px -107px;
	background-repeat: no-repeat
}

#extMobLogin a {
	color: #6d798c;
	font-size: 12px;
	font-weight: normal;
	text-decoration: none;
}

#extMobLogin .ext-tt {
	margin-bottom: 5px
}

#extMobLogin .ext-tt a {
	font-weight: bold;
}

#extVerSelect {
	height: 66px;
	line-height: 66px;
	font-size: 14px;
	text-align: center;
	font-weight: 700;
}

#extVerSelect a {
	color: #005590;
	text-decoration: underline;
}

.setMobLoginInfo {
	margin-left: 46px;
	color: #848585;
	margin-top: 10px;
}

/* tab-2 */
.tab-2 #extMobLogin var {
	margin: 0 4px;
	color: #cbd2de;
	font-style: normal;
}

.tab-2 .ext-4free {
	display: inline-block;
	padding-right: 26px;
	background-position: 97px -156px;
}

.tab-2 .loginFormIpt .ico {
	top: 12px;
}

.tab-2 .ico-uid {
	height: 18px;
	background-position: -200px -64px;
}

/*.tab-2 .ext{height:76px;}
.tab-2 .loginFormCheck{margin-top:10px;}
.tab-2 .loginFormBtn{margin-top:10px;}*/ /* footer */
.footer {
	height: 65px;
	margin: 0 auto;
}

.footer-inner {
	width: 1000px;
	height: 63px;
	overflow: visible;
	margin: 0 auto;
	color: #848585;
	position: relative;
}

.footerLogo {
	top: 11px;
	left: 35px
}

.footerNav {
	top: 25px;
	right: 123px;
}

.footerNav a {
	margin-left: 12px
}

.copyright {
	margin-left: 12px
}

/* noscript */
.noscriptTitle {
	line-height: 32px;
	font-size: 24px;
	color: #d90000;
	padding-top: 60px;
	font-weight: 700;
	background: #fff;
}

.noscriptLink {
	text-decoration: underline;
	color: #005590;
	font-size: 14px;
}

/* mobtips */
#mobtips {
	height: 18px;
	border: 1px solid #c6c6a8;
	top: 29px;
	left: 46px;
	line-height: 18px;
	background: #ffffe1;
	padding-left: 6px;
	padding-right: 20px;
	display: none;
	color: #565656;
	zoom: 1;
}

#mobtips_arr {
	width: 9px;
	height: 9px;
	background-position: -684px -72px;
	top: -5px;
	left: 15px;
}

#mobtips_close {
	background-position: -715px -68px;
	top: 2px;
	width: 16px;
	height: 14px;
	right: 0px;
}

#mobtips em {
	font-style: normal;
	color: #328721;
}

#mobtips a {
	text-decoration: underline;
	color: #005590;
}

/* mask */
.mask {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: #000;
	filter: alpha(opacity = 30);
	-moz-opacity: 0.3;
	opacity: 0.3;
	z-index: 998
}

/* 弹框 */
.dialogbox {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 999;
	width: 687px;
	left: 50%;
	margin-left: -343px;
	top: 50%;
	margin-top: -152px;
}

.dialogbox .hd {
	position: relative;
	padding: 0 10px;
	height: 27px;
	line-height: 27px;
	color: #fff;
	background-repeat: repeat-x;
	background-position: 0 -576px
}

.dialogbox .hd .rc {
	position: absolute;
	top: 0;
	width: 2px;
	height: 27px
}

.dialogbox .hd .rc-l {
	left: 0;
	background-position: -720px -36px
}

.dialogbox .hd .rc-r {
	right: 0;
	background-position: -722px -36px
}

.dialogbox .hd .btn-close {
	position: absolute;
	right: 5px;
	top: 5px;
	width: 16px;
	height: 16px;
	background-position: -716px 3px;
	line-height: 9999px;
	overflow: hidden;
	font-size: 0;
	margin-right: 0;
}

.dialogbox .bd {
	border: 1px solid #6C92AD;
	border-top: none;
	background: #fff
}

.dialogbox iframe {
	display: block
}

#phoneRegFrame {
	width: 685px;
	height: 315px
}

/* 加密http登录弹窗 */
.enhttp .topborder,.enhttp .bottomborder,.enhttp .ct,.enhttp .cldenhttp,.enhttp .ct .inner .httplogin
	{
	background-image:
		url(http://mimg.127.net/index/lib/img/bg_httplogin.gif);
	background-color: transparent;
	background-repeat: no-repeat;
	text-decoration: none;
}

.enhttp {
	width: 420px;
	height: 270px;
	position: absolute;
	z-index: 999;
	overflow: hidden;
	top: 0;
	left: 50%;
	margin-left: -210px;
	top: 50%;
	margin-top: -135px;
}

.enhttp .topborder {
	width: 418px;
	height: 2px;
	font-size: 1px;
	overflow: hidden;
	margin: 0 auto;
	background-position: 0 -108px;
}

.enhttp .bottomborder {
	width: 418px;
	height: 2px;
	font-size: 1px;
	overflow: hidden;
	margin: 0 auto;
	background-position: 0 -110px;
}

.enhttp .ct {
	width: 418px;
	height: 266px;
	background-position: 0 -134px;
	background-color: #fff;
	border-left: 1px solid #82aecd;
	border-right: 1px solid #82aecd;
	position: relative;
	overflow: hidden;
}

.enhttp .ct .inner {
	padding-top: 40px;
	margin: 0 auto;
	text-align: left;
}

.enhttp .ct .inner p {
	font-size: 14px;
}

.enhttp .ct .inner .txt-tips {
	color: #737373;
	line-height: 30px;
	width: 325px;
	margin-left: 46px;
	display: inline;
}

.enhttp .ct .inner .txt-normal {
	line-height: 30px;
	width: 325px;
	margin: 10px 0 0 46px;
}

.enhttp .ct .inner .httplogin {
	font-size: 14px;
	height: 34px;
	width: 120px;
	display: block;
	background-position: -432px -108px;
	line-height: 34px;
	text-align: center;
	color: #fff;
	font-weight: 700;
	background-color: #3486cc;
}

.enhttp .ct .inner .txt-line {
	width: 325px;
	margin-left: 46px;
	background: #b6cad9;
	height: 1px;
	overflow: hidden;
	font-size: 1px;
	margin-top: 24px;
}

.enhttp .ct .inner .txt-advice {
	line-height: 60px;
	width: 325px;
	color: #8d8d8d;
	margin-left: 46px;
}

.enhttp .ct .inner .txt-advicelink {
	margin-left: 20px;
	font-size: 14px;
}

.enhttp .cldenhttp {
	height: 22px;
	width: 22px;
	overflow: hidden;
	position: absolute;
	right: 8px;
	top: 6px;
	background-position: 0 -112px;
	text-indent: -9999px;
}

.enhttp .cldenhttp:hover {
	background-position: -22px -112px;
}

.enhttp .enhttpbox {
	position: absolute;
	z-index: 2;
	left: 0;
}

.enhttp .httploginframe {
	width: 100%;
	height: 200px;
	position: absolute;
	top: 2px;
	z-index: 1;
	left: 0;
}

/* 测速 */
#locationTest {
	position: absolute;
	width: 255px;
	top: -2px;
	left: 0px;
	height: 88px;
	background: #fff;
	border: 1px solid #b7c2c9;
	display: ;
	margin-bottom: 200px;
	height: 79px;
	overflow: hidden;
	display: none;
}

.locationTestTitle {
	width: 255px;
	height: 26px;
	line-height: 26px;
	position: relative;
	color: #555;
	text-indent: 10px;
	background-position: 0 -10px;
	border-bottom: 1px solid #f1f3f5;
}

.locationTestTitle h4 {
	margin: 0;
	font-size: 12px;
}

.locationTestTitleClose {
	height: 8px;
	width: 8px;
	overflow: hidden;
	display: block;
	position: absolute;
	right: 6px;
	top: 7px;
	background-position: -224px -112px
}

.locationTestTitleClose:hover {
	background-position: -208px -112px
}

.locationTestEach {
	display: inline-block;
	width: 5em;
	font-family: verdana;
	color: #848585;
}

.locationTestList li {
	padding: 2px;
	float: left;
	display: inline-block;
}

.locationTestList .servSelected {
	background-position: -248px -50px;
	background-repeat: no-repeat;
}

.locationTestList li a {
	height: 38px;
	width: 80px;
	display: block;
	line-height: 16px;
	padding-top: 10px;
	overflow: hidden;
	text-align: center;
	color: #000;
}

.locationTestList li a:hover {
	background-color: #eef3f8;
}

#selectLocation {
	text-align: center;
}

#locationTestCur {
	width: 3em;
}

#selectLocationTipsDone {
	display: none;
}

.locationTestBest {
	display: none;
	color: green;
}

.locationChoose {
	text-decoration: underline;
	color: #005590;
}

#themeArea {
	width: 240px;
	height: 80px;
	position: absolute;
	left: 90px;
	top: 134px;
}

/* 主题控制栏 */
.themeCtrl {
	position: absolute;
	right: 100px;
	bottom: 12px;
}

.themeCtrl a {
	float: left;
	display: inline;
}

#musicLink,#prevTheme,#nextTheme {
	width: 25px;
	height: 25px;
	margin-right: 7px;
}

#musicLink {
	background-position: -161px -457px;
}

#musicLink:hover {
	background-position: -161px -492px;
}

#prevTheme {
	background-position: 0 -457px;
}

#prevTheme:hover {
	background-position: 0 -492px;
}

#nextTheme {
	margin-right: 0;
	background-position: -35px -457px;
}

#nextTheme:hover {
	background-position: -35px -492px;
}

/* 首页评分 */
#scoreIndex {
	margin: 1px 10px 0 0;
	width: 73px;
	height: 24px;
	background-position: -70px -457px;
	font-size: 12px;
	color: #fff;
	line-height: 24px;
	text-align: center;
	display: none;
}

#scoreIndex:hover {
	background-position: -70px -492px;
}

#scoreIndexPop {
	left: 50%;
	top: 50%;
	margin-left: -231px;
	margin-top: -115px;
	width: 462px;
	position: absolute;
	z-index: 999;
	overflow: hidden;
	display: none;
	height: 229px;
	background: #fff;
}

#scoreIndexPopIfm {
	width: 462px;
	height: 229px;
}

/**/
#theme {
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	background: none;
}

#theme.themeEffect {
	background: #e7ebe9;
}

/* ie6 */
#musicLink,#musicLink:hover,#prevTheme,#prevTheme:hover,#nextTheme,#nextTheme:hover,#scoreIndex,#scoreIndex:hover
	{
	-height: 24px;
	-background-position-y: -527px;
}

/* 云音乐 */
#yunMusic {
	width: 329px;
	height: 162px;
	border-radius: 3px;
	position: absolute;
	z-index: 999;
	left: 50%;
	top: 50%;
	margin-left: -450px;
	overflow: hidden;
	color: #626262;
	margin-top: -122px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, .6);
	display: none;
}

#yunMusicBackground {
	width: 329px;
	height: 162px;
	position: absolute;
	left: 0;
	top: 0;
	background: #fff;
	filter: alpha(opacity = 90);
	opacity: 0.9;
	z-index: 0;
}

#yunMusicText1 {
	position: absolute;
	z-index: 1;
	line-height: 22px;
	vertical-align: baseline;
	left: 21px;
	top: 24px;
	text-align: left;
	width: 290px;
}

#yunMusicText1 img {
	position: relative;
	top: 2px;
}

#yunMusicText2 {
	position: absolute;
	z-index: 1;
	left: 21px;
	top: 80px;
	width: 290px;
	text-align: left;
}

#yunMusicConfirm {
	position: absolute;
	z-index: 1;
	height: 25px;
	line-height: 25px;
	width: 86px;
	display: block;
	border: 1px solid #459830;
	border-radius: 3px;
	background: #59b045;
	color: #fff;
	left: 120px;
	top: 120px;
	background: -moz-linear-gradient(top, #6bbb59 0%, #459830 100%);
	/* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #6bbb59),
		color-stop(100%, #459830) ); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #6bbb59 0%, #459830 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #6bbb59 0%, #459830 100%);
	/* Opera 11.10+ */
	background: -ms-linear-gradient(top, #6bbb59 0%, #459830 100%);
	/* IE10+ */
	background: linear-gradient(to bottom, #6bbb59 0%, #459830 100%);
	/* W3C */
}

#yunMusicClose {
	height: 14px;
	width: 14px;
	right: 0;
	top: 0;
	line-height: 14px;
	left: auto;
	font-size: 12px;
	text-align: center;
	background: #ccc;
	border-color: #b8b8b8;
	color: #fff;
	font-family: Verdana;
	position: absolute;
	border-radius: 3px;
}

#yunMusicClose:hover {
	background: #c2c2c2;
	border-color: #aaa9a9;
}

/* 错误提示 */
.error-hd,.error-mid,.error-ft,.error-arrow,.error-tt p {
	background-image:
		url("http://mimg.127.net/index/163/img/2013/error_bg.png");
	_background-image:
		url("http://mimg.127.net/index/163/img/2013/error_bg_ie6.png");
}

#errorAlert {
	position: absolute;
	width: 347px;
	top: 0;
	left: 50%;
	margin-left: -265px;
	text-align: left;
	z-index: 1000;
	display: none;
}

#errorAlert.errorAlert-show {
	display: block;
	-webkit-animation: shake 0.6s ease-in-out 0.3s;
	-moz-animation: shake 0.6s ease-in-out 0.3s;
	-o-animation: shake 0.6s ease-in-out 0.3s;
	animation: shake 0.6s ease-in-out 0.3s;
}

#errorAlert .error-hd,#errorAlert .error-ft {
	overflow: hidden;
	font-size: 0;
	line-height: 0;
}

#errorAlert .error-hd {
	height: 8px;
	background-position: -10px 0;
	background-repeat: no-repeat;
}

#errorAlert .error-ft {
	height: 10px;
	background-position: -10px -8px;
	background-repeat: no-repeat;
}

#errorAlert .error-mid {
	padding: 5px 20px 7px;
	background-position: -357px 0;
	background-repeat: repeat-y;
}

#errorAlert .error-arrow {
	position: absolute;
	top: 35px;
	right: -6px;
	width: 10px;
	height: 19px;
	background-position: 0 0;
	background-repeat: no-repeat;
}

#errorAlert .error-tt p {
	padding: 10px 20px 8px 60px;
	color: #434343;
	line-height: 22px;
	font-weight: bold;
	font-size: 14px;
	background-position: -704px center;
	background-repeat: no-repeat;
}

#errorAlert .error-detail {
	margin-top: 2px;
	padding: 8px 18px 5px 18px;
	color: #7d7d7d;
	line-height: 18px;
	border-top: 1px solid #e1e1e1;
}

#errorAlert .error-detail a {
	color: #4e90e2;
	text-decoration: underline;
}

@
-webkit-keyframes shake { 0%{
	margin-left: -265px;
}

25%{
margin-left
:
 
-262
px
;
}
50%{
margin-left
:
 
-265
px
;
}
75%{
margin-left
:
 
-262
px
;
}
100%{
margin-left
:
 
-265
px
;
}
}
@
-moz-keyframes shake { 0%{
	margin-left: -265px;
}

25%{
margin-left
:
 
-262
px
;
}
50%{
margin-left
:
 
-265
px
;
}
75%{
margin-left
:
 
-262
px
;
}
100%{
margin-left
:
 
-265
px
;
}
}
@
-o-keyframes shake { 0%{
	margin-left: -265px;
}

25%{
margin-left
:
 
-262
px
;
}
50%{
margin-left
:
 
-265
px
;
}
75%{
margin-left
:
 
-262
px
;
}
100%{
margin-left
:
 
-265
px
;
}
}
@
keyframes shake { 0%{
	margin-left: -265px;
}

25%{
margin-left
:
 
-262
px
;
}
50%{
margin-left
:
 
-265
px
;
}
75%{
margin-left
:
 
-262
px
;
}
100%{
margin-left
:
 
-265
px
;
}
}
#errorMask {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 600px;
	background: #000;
	opacity: 0.2;
	filter: alpha(opacity = 20);
	z-index: 1;
}

/* 易信二维码登录 */
.loginByYX-link,.yxCode-btn {
	background: url(http://mimg.127.net/index/163/img/2013/yixin_ico.png)
		no-repeat;
}

#loginByYX {
	position: absolute;
	height: 100px;
	bottom: 45px;
	left: 0;
}

#yxCode {
	position: absolute;
	left: 50px;
	top: 8px;
	background-color: #fff;
}

.loginByYX-txt,.loginByYX-txt-err {
	padding: 28px 0 0 158px;
	color: #959595;
	line-height: 23px;
}

.loginByYX-txt-err {
	color: #626262;
}

.loginByYX-link {
	margin: 0 3px;
	padding-left: 16px;
	background-position: -68px 0;
}

.loginByYX-link,.loginByYX-link:hover {
	color: #279c7b;
}

#yxCodeRefresh {
	position: absolute;
	top: 8px;
	left: 50px;
	width: 85px;
	height: 85px;
}

.yxCode-mask {
	height: 100%;
	background: #fff;
	opacity: 0.8;
	filter: alpha(opacity = 80);
}

.yxCode-btn {
	position: absolute;
	top: 30px;
	left: 9px;
	display: block;
	width: 68px;
	height: 28px;
	line-height: 28px;
	background-position: 0 0;
	color: #6D798C;
	text-align: center;
	font-size: 14px;
}

.yxCode-btn:hover {
	color: #347BC7;
}
</style>

		<script id="jsOption" type="text/javascript">
//当前域名配置
var gOption = {
	"sDomain" : "163.com",
	"sCookieDomain" : "mail.163.com",
	"sAutoLoginUrl" : "http://entry.mail.163.com/coremail/fcg/ntesdoor2?lightweight=1&verifycookie=1&language=-1&from=web&df=webmail163",
	"sSslAction" : "https://ssl.mail.163.com/entry/coremail/fcg/ntesdoor2?",
	"product" : "mail163",
	"url" : "http://entry.mail.163.com/coremail/fcg/ntesdoor2?",
	"url2" : "http://mail.163.com/errorpage/error163.htm",
	"gad" : "mail.163.com"
};
</script>
<script id="jsBase" type="text/javascript" src="http://mimg.127.net/index/lib/scripts/base_v5.min.js"></script>
<script id="jsInit" type="text/javascript">
fSetCookie("starttime",'',false); // starttime 登录时间统计
fCheckCookie();
fCheckAutoLogin();
if(!fGetQuery('errorType')){ // 有错误信息时不自动登录
	fAutoLogin();
}
fCheckBrowser();
fHtml5Tag();
function login(){
	alert(222);
	var username=$("#idInput").val();
	var pwd=$("#pwdInput").val();
	if(username==null||username==""||username==undefined){
		alert("用户名不能为空!");
		return "";
	}
	if(pwd==null||pwd==""||pwd==undefined){
		alert("密码不能为空!");
		return "";
	}
	$.ajax({
		   type: "POST",
		   url: "login!loginAdmin.action",
		   data: {username:username,password:pwd},
		   async: false,
		   success: function(msg){
			   alert(msg);
			   if(msg==="成功ok"){
				   //alert(1111);
				   window.location.href="<%=request.getContextPath() %>/redirectUrl.jsp";
				   return "";
			   }
			   if(msg==="toMobile"){
				   alert("mobile");
				   window.location.href="<%=request.getContextPath()%>/mobile.jsp";
				   return;
			   }
			   alert(222);
			   //alert("${refererUrl}");
			  //alert(msg);
			  window.location.href="${refererUrl}";
		   }
	});
	
}
</script>
	</head>

	<body>
		<header class="header">
		<h1 class="headerLogo">
			<a href="http://mail.163.com/html/mail_intro/" target="_blank"
				title="tfy走近网易免费邮"><img src="http://mimg.127.net/logo/163logo.gif"
					alt="tfy163网易免费邮" />
			</a>
		</h1>
		<a class="headerIntro" href="http://mail.163.com/html/mail_intro/"
			target="_blank" title="走近网易免费邮"><span class="unvisi">tfy中文邮箱第一品牌</span>
		</a>
		<nav class="headerNav">
		<a href="http://email.163.com" target="_blank">tfy免费邮</a>
		<a href="http://qiye.163.com/" target="_blank">tfy企业邮箱</a>
		<a href="http://vip.163.com?b08abh1" target="_blank">tfyVIP邮箱</a>
		<a href="http://hw.mail.163.com/#163" target="_blank">tfy国外用户登录</a>
		<a href="http://help.mail.163.com" target="_blank">tfy帮助</a>&nbsp;|&nbsp;
		<a class="last"
			href="http://help.163.com/special/007528M7/xiaoyi_intd.html"
			target="_blank">tfy在线答疑</a>
		</nav>
		</header>

		<section class="main" id="mainBg">
		<div class="main-inner" id="mainCnt">
			<div id="theme">
				<noscript>
					<p class="noscriptTitle">
						浏览器不支持或禁止了网页脚本，
						<br />
						导致您无法正常登录。
					</p>
					<br />
					<a class="noscriptLink"
						href="http://help.mail.163.com/faqDetail.do?code=d7a5dc8471cd0c0e8b4b8f4f8e49998b374173cfe9171305fa1ce630d7f67ac2122641eb4548bd1e"
						target="_blank">如何解除脚本限制</a>
				</noscript>
			</div>
			<div class="themeCtrl">
				<a id="scoreIndex" href="javascript:void(0);"
					onclick="indexLogin.scoreIndex.open();" title="首页评分"> tfy为首页评分 </a>
				<a id="musicLink" href="javascript:void(0);" target="_blank"
					title="听一首歌"></a>
				<a id="prevTheme" href="javascript:void(0);"
					onclick="indexLogin.showThemes(indexLogin.oTheme.getPrev())"
					title="上一张"></a>
				<a id="nextTheme" href="javascript:void(0);"
					onclick="indexLogin.showThemes(indexLogin.oTheme.getNext())"
					title="下一张"></a>
			</div>
		</div>
		<!--错误提示浮层-->
		<div id="errorMask" style="display: none"></div>
		<div id="errorAlert">
			<div class="error-hd"></div>
			<div class="error-mid">
				<div class="error-tt">
					<p id="errorTitle"></p>
				</div>
				<div id="errorDetail" class="error-detail" style="display: none">
					<p>
						提示：
					</p>
					<p id="errorInfo" class="error-info"></p>
				</div>
			</div>
			<div class="error-ft"></div>
			<div id="errorArr" class="error-arrow"></div>
		</div>
		<!--登录框-->
		<div id="loginBlock" class="login tab-1">
			<div class="loginFunc">
				<div id="lbNormal" class="loginFuncNormal">
					tfy邮箱帐号登录
				</div>
				<div id="lbMob" class="loginFuncMobile">
					tfy手机号登录
				</div>
			</div>
			<div class="loginForm">
			<form action="login!loginAdmin.action" method="post">
					<input type="hidden" id="savelogin" name="savelogin" value="0" />
					<input type="hidden" id="url2" name="url2"
						value="http://mail.163.com/errorpage/error163.htm" />
					<div id="idInputLine" class="loginFormIpt showPlaceholder">
						<b class="ico ico-uid"></b>
						<input class="loginFormTdIpt" tabindex="1" title="请输入帐号"
							id="idInput" name="username" type="text" maxlength="50" value="" />
						<span id="showdomain" class="domain">@163.com</span>
						<div id="mobtips"></div>
						<label for="idInput" class="placeholder" id="idPlaceholder">
							tfy邮箱帐号或手机号
						</label>
						<div id="idInputTest"></div>
					</div>
					<div id="pwdInputLine" class="loginFormIpt showPlaceholder">
						<b class="ico ico-pwd"></b>
						<input class="loginFormTdIpt" tabindex="2" title="请输入密码"
							id="pwdInput" name="password" type="password" />
						<label for="pwdInput" class="placeholder" id="pwdPlaceholder">
							tfy密码
						</label>
						<p id="capsLockHint" style="display: none">
							大写状态开启
						</p>
					</div>
					<div class="loginFormCheck">
						<div id="lfAutoLogin" class="loginFormCheckInner">
							<b class="ico ico-checkbox"></b>
							<label id="remAutoLoginTxt" for="remAutoLogin">
								<input tabindex="3" title="十天内免登录" class="loginFormCbx"
									type="checkbox" id="remAutoLogin" />
								tfy十天内免登录
							</label>
							<div id="whatAutologinTip">
								tfy为了您的信息安全，请不要在网吧或公用电脑上使用此功能！
							</div>
							<!--
						<a class="whatAutologin" href="http://help.163.com/09/1217/10/5QNRFLMM00753VB8.html?b08abI1" tabindex="4" target="_blank" title="什么是自动登录">什么是自动登录</a>
						-->
						</div>
						<div class="forgetPwdLine">
							<a class="forgetPwd"
								href="http://reg.163.com/getpasswd/RetakePassword.jsp?from=mail163"
								target="_blank" title="找回密码">tfy忘记密码了?</a>
						</div>

					</div>
					<div class="loginFormBtn">
						<button id="loginBtn" class="btn btn-login" tabindex="6" type="submit">
							tfy登&nbsp;&nbsp;h录
						</button>
						<a id="lfBtnReg" class="btn btn-reg"
							href="http://reg.email.163.com/mailregAll/reg0.jsp?from=163mail_right"
							target="_blank" tabindex="7">tfy注&nbsp;&nbsp;册</a>
						<a id="lfBtnReg2" class="btn btn-reg"
							href="http://e.mail.163.com/mobilemail/home.do?from=163mail"
							target="_blank" tabindex="7">注&nbsp;&nbsp;册</a>
					</div>
					<div class="loginFormConf">
						<div class="loginFormVer">
							tfy版本:
							<a id="styleConf" href="javascript:void(0);">默认版本 <b
								class="ico ico-arr ico-arr-d"></b>
							</a>
						</div>
						<div class="loginFormService" id="loginSSL">
							tfy正使用SSL登录
						</div>
						<div class="loginFormService" id="AllSSL" style="display: none">
							<input title="全程SSL" class="loginFormCbx" type="checkbox"
								id="AllSSLCkb" />
							&nbsp;
							<label style="vertical-align: baseline;" for="AllSSLCkb">
								全程SSL
							</label>
						</div>
						<div class="loginFormCheckInner" style="display: none">
							<input class="loginFormCbx loginFormSslCbx" type="checkbox"
								tabindex="5" title="SSL安全登录" id="SslLogin" checked="checked" />
							<label class="loginFormSslText" for="SslLogin">
								&nbsp;
								<span style="font-family: verdana;">SSL</span>安全登录
							</label>
						</div>
						<div class="loginFormService" style="display: none">
							<a id="selectLocationTips" href="javascript:void(0);"
								onclick="fSelectLoaction('show');return false;">登录速度太慢? <b
								class="ico ico-arr ico-arr-d"></b>
							</a>
							<span id="selectLocationTipsDone"> <a
								href="javascript:void(0);"
								onclick="fSelectLoaction('show');return false;"> <span>服务器:
										<span id="selectLocation">电信</span>
								</span><b class="ico ico-arr ico-arr-d"></b> </a> </span>
						</div>
						<div id="styleConfBlock" class="loginFormVerList unishadow">
							<ul>
								<li>
									<a id="styleconf-1" class="verSelected"
										href="javascript:void(0);" onclick="indexLogin.setStyle(-1)">默认版本</a>
								</li>
								<li>
									<a id="styleconf7" href="javascript:void(0);"
										onclick="indexLogin.setStyle(7)">网易邮箱<span
										class="fontWeight">6.0</span>版</a>
								</li>
								<li>
									<a id="styleconf6" href="javascript:void(0);"
										onclick="indexLogin.setStyle(6)">网易邮箱<span
										class="fontWeight">6.0</span>简约版</a>
								</li>
								<li>
									<a id="styleconf5" href="javascript:void(0);"
										onclick="indexLogin.setStyle(5)">网易邮箱<span
										class="fontWeight">5.0</span>版</a>
								</li>
								<li>
									<a id="styleconf3" href="javascript:void(0);"
										onclick="indexLogin.setStyle(3)">网易邮箱<span
										class="fontWeight">5.0</span>简约版</a>
								</li>
							</ul>
						</div>
						<div id="locationTest" class="unishadow">
							<div class="locationTestTitle">
								<h4>
									测试并选择最佳服务器
								</h4>
								<a class="locationTestTitleClose" href="javascript:void(0);"
									onclick="fSelectLoaction();return false;">>关闭</a>
							</div>
							<div class="locationTestList">
								<ul>
									<li>
										<a id="locationHref0" href="javascript:void(0);"
											onclick="fLocationChoose('t');return false;">
											电&nbsp;&nbsp;&nbsp;信 <br />
											<span class="locationTestEach" id="locationTest0"></span> </a>
									</li>
									<li
										style="border-left: 1px solid #d5dbe2; border-right: 1px solid #d5dbe2;">
										<a id="locationHref1" href="javascript:void(0);"
											onclick="fLocationChoose('c');return false;">
											联&nbsp;&nbsp;&nbsp;通 <br />
											<span class="locationTestEach" id="locationTest1"></span> </a>
									</li>
									<li>
										<a id="locationHref2" href="javascript:void(0);"
											onclick=
	fLocationChoose('e');
	return false;;
> tfy教育网 <br />
											<span class="locationTestEach" id="locationTest2"></span> </a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				<div id="loginByYX">
					<img id="yxCode" width="85" height="85" src="" />
					<div id="yxCodeRefresh" style="display: none;">
						<div class="yxCode-mask"></div>
						<a id="refeshYXCodeBtn" class="yxCode-btn"
							href="javascript:void(0)">刷 新</a>
					</div>
					</form>
					<div id="yxCodeTxt" class="loginByYX-txt"></div>
					<form id="codeLoginForm" method="post" action="" autocomplete="off"
						target="_self"></form>
				</div>
				<div class="ext" id="loginExt">
					<div id="extVerSelect">
						<a href="http://ipad.mail.163.com/index.htm?dv=ipad">适配iPad版本</a>&nbsp;|&nbsp;
						<a href="http://smart.mail.163.com/index.htm?dv=smart">手机智能版</a>&nbsp;|&nbsp;电脑版
					</div>
					<ul id="extText"></ul>
					<div id="extMobLogin">
						<h3 class="ext-tt">
							<a href="http://yixin.im/?from=163mailtab" target="_blank">有手机号码邮箱，就可以直接登录易信</a>
						</h3>
						<p>
							<a href="http://yixin.im/?from=163mailtab" target="_blank"> <span>无需注册</span>
							<var>
									|
								</var>邮件到达免费提醒<var>
									|
								</var>送2G网盘 </a>
						</p>
					</div>
					<div id="extMobLogin2">
						<button class="btn btn-moblogin2" id="extBtnMoblogin"
							type="button">
							还没设置手机号登录？
						</button>
						<div class="setMobLoginInfo">
							设置后，可用手机号直接登录邮箱（完全免费）
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<footer id="footer" class="footer">
		<div class="footer-inner" id="footerInner">
			<a class="footerLogo" href="http://www.163.com/" target="_blank"><img
					src="http://mimg.127.net/logo/netease_logo.gif" alt="网易NetEase" />
			</a>
			<a id="KX_IMG" style="position: absolute; right: 50px; top: 24px;"
				href="https://ss.knet.cn/verifyseal.dll?sn=e12051044010020841301459&ct=df&pa"
				target="_blank"> <img src="http://mimg.127.net/logo/knet.png"
					alt="可信网站，身份验证" /> </a>
			<nav class="footerNav">
			<a href="http://corp.163.com/index_gb.html" target="_blank">tfy关于网易</a><a
				href="http://mail.163.com/html/mail_intro" target="_blank">tfy关于网易免费邮</a><a
				href="http://mail.blog.163.com/" target="_blank">tfy邮箱官方博客</a><a
				href="http://help.mail.163.com" target="_blank">tfy客户服务</a><a
				style="margin-right: 10px"
				href="http://corp.163.com/gb/legal/legal.html" target="_blank">tfy隐私政策</a>|
			<span class="copyright">tfy公司版权所有&copy;2014-2020</span>
			</nav>
		</div>
		</footer>
		<!--遮罩-->
		<div id="mask" class="mask" style="display: none;"></div>
		<!--手机号码注册弹框-->
		<div id="phoneRegDiv" class="dialogbox" style="display: none;">
			<div class="hd">
				<h3>
					tfy设置手机号登录
				</h3>
				<a id="phoneRegDivClose" href="javascript:;" class="btn btn-close"
					title="关闭">关闭</a>
				<span class="rc rc-l"></span>
				<span class="rc rc-r"></span>
			</div>
			<div class="bd">
				<iframe id="phoneRegFrame" src="about:blank" style="border: 0">
					tfy设置手机号登录iframe
				</iframe>
			</div>
		</div>
		<!--登录提示弹框-->
		<div class="enhttp" style="display: none" id="enhttpblock">
			<div class="enhttpbox">
				<div class="topborder"></div>
				<div class="ct">
					<div class="inner">
						<p class="txt-tips">
							tfy登录过程有点慢哦，可能是由于网络问题造成的。
						</p>
						<p id="enhttpTips" class="txt-normal">
							<span id="backwards">3</span>&nbsp;秒后自动尝试普通加密方式登录
						</p>
						<p class="txt-normal">
							<a id="idLoginBtn" class="httplogin" href="javascript:void(0)">确&nbsp;&nbsp;定</a>
						</p>
						<p class="txt-line"></p>
						<p class="txt-advice">
							无法登录邮箱？
							<a class="txt-advicelink"
								href="http://zhidao.mail.163.com/zhidao/lfeedback.jsp"
								target="_blank">意见反馈&gt;&gt;</a>
						</p>
					</div>
				</div>
				<div class="bottomborder"></div>
			</div>
			<iframe class="httploginframe" src="about:blank" id="frameforlogin"
				name="frameforlogin" style="overflow: hidden; border: 0">
				登录iframe
			</iframe>
		</div>
		<!--首页评分弹框-->
		<div id="scoreIndexPop">
			<iframe id="scoreIndexPopIfm" src="about:blank" frameborder="0"
				scrolling="no" allowTransparency="allowtransparency"></iframe>
		</div>
		<!--云音乐弹框-->
		<div id="yunMusic">
			<div id="yunMusicBackground"></div>
			<div id="yunMusicText1">
				非常感谢您的支持！您将收到
				<strong>一条短信</strong>，点击短信内链接免费下载全新音乐软件
				<a style="color: #dd0000"
					href="http://music.163.com/?act=cmad_20130517_08" target="_blank">&nbsp;<img
						src="http://mimg.127.net/index/163/effects/130523_music.png"
						alt="网易云音乐" />&nbsp;网易云音乐</a>。
			</div>
			<div id="yunMusicText2">
				tfy明星私房歌单、320K高品质音乐，尽在网易云音乐！
			</div>
			<a id="yunMusicConfirm"
				href="http://music.163.com/?act=cmad_20130517_08" target="_blank">体验云音乐</a>
			<a id="yunMusicClose" href="javascript:void(0);">X</a>
		</div>

		<script id="jsExec" type="text/javascript">
	/* 全局变量 */
	// 保存UD数据，用于缓存
	var gAdUserPropertyData;
	// 定义广告素材全局变量
	var gAdResData = {
		// 1、手机号码
		mobile : function() {
			return nRandom = 0;
		},
		// 2、易信
		yixin : function() {
			return nRandom = 1;
		},
		// 3、云音乐
		music : function() {
			return nRandom = 3;
		},
		// 4、云阅读
		read : function() {
			return nRandom = 4;
		},
		// 5、新闻客户端
		news : function() {
			return nRandom = 5;
		}
	};

	//错误提示语
	var gErrorInfo = {
		'noId' : {
			'title' : '请先输入您的邮箱帐号'
		},
		'noPhone' : {
			'title' : '请先输入您的手机号码邮箱帐号'
		},
		'noPw' : {
			'title' : '请输入您的密码'
		},
		'inputWrong' : {
			'title' : '帐号或密码错误',
			'info' : '1. 请检查帐号拼写，是否输入有误__tag_2135$30_2. 若帐号长期未登录，可能已被注销，请__tag_2135$56_重新注册__tag_2135$167_<br />3. 若您忘记密码，请__tag_2135$188_找回密码__tag_2135$279_<br/>4. 若您需要锁定此帐号，请__tag_2135$302_点击这里__tag_2135$383_<br/>5. 若手机号码邮箱的手机号已更换，可__tag_2135$411_找回原帐号__tag_2135$497_'
		},
		'idLocked' : {
			'title' : '抱歉！您的帐号已被锁定，__tag_2138$25_暂时无法登录。'
		},
		'systemBusy' : {
			'title' : '繁忙的系统暂时需要停下歇歇，请您稍后再试。'
		},
		'loginWrong' : {
			'title' : '您的登录过于频繁，请稍后再试。'
		},
		'loginTimeout' : {
			'title' : '登录超时！',
			'info' : '当前邮箱登录状态已失效, 请重新登录。'
		}
	};

	var oStyle = {
		value : '-1'
	};

	(function(window) {
		window.indexLogin = {
			init : fInit,
			setUserInfo : fSetUserInfo,
			// 输入相关
			initInputBox : fInitInputBox,
			focusInputBox : fFocusInputBox,
			idInputEvent : fIdInputEvent,
			checkPw : fCheckPw,
			checkInputAlways : fCheckInputAlways,
			handleString : fHandleString,
			showPhoneReg : fShowPhoneReg,
			// tab切换相关
			switchTab : fSwitchTab,
			switchTabTimeout : fSwitchTabTimeout,
			setbSwitchTabTimeout : fSetbSwitchTabTimeout,
			// 登录相关
			setStyle : fSetStyle,
			submitForm : fSubmitForm,
			showTheHttpLogin : fShowTheHttpLogin,
			showError : fShowError,
			hideError : fHideError,
			vericalAlignBody : fVericalAlignBody,
			// 主题图相关
			oTheme : {},
			adGetUdData : fAdGetUdData,
			initThemes : fInitThemes,
			showThemes : fShowThemes,
			themeShowLog : fThemeShowLog,
			scoreIndex : fScoreIndex,
			adSendMsg : fAdSendMsg,
			musicCallback : fMusicCallback,
			// 其它
			KX : fKX,
			tmpSwitchLog : fTmpSwitchLog
		};

		var oId, oIdL, oPw, oPwL;
		var nDomainWidth = 80;
		var tab1Cls = 'login tab-1', tab2Cls = 'login tab-2';
		var ntabOn = 1, sTmpId, sTmpPwd, sTmpMob = '', sTmpMobPwd = '', sTmpInput = '', sTmpMobInput = '';
		var bSwitchTabTimeout = true;

		//登录流程
		var sLoginFunc = 'ssl', bIsFirstLog = true, sCoremailCookie = '';

		// starttime 登录时间统计
		var bStartTime = true;

		function fInit() {
			var me = this;

			oId = $id('idInput');
			oIdL = $id('idInputLine');
			oPw = $id('pwdInput');
			oPwL = $id('pwdInputLine');

			window.frames['frameforlogin'].location.href = 'about:blank';
			// 读取url判断是否有错误信息
			var sErrKey = 'errorType';
			if (window.location.href.indexOf('?' + sErrKey) > -1) {
				var sErrorCode = fGetQuery(sErrKey);
				me.showError(sErrorCode);
			}

			// tab控制
			if (gbForcepc) {
				tab1Cls = 'login tab-1 tab-11';
			}
			$id('loginBlock').className = tab1Cls;

			var oTab2 = $id('lbMob');
			fEventListen(oTab2, 'mouseover', me.switchTabTimeout);
			fEventListen(oTab2, 'mouseout', me.setbSwitchTabTimeout);

			if ((window.location.href.indexOf('tab2') > -1)
					|| fGetQueryHash('tab') == '2') {
				me.switchTab(); // 手机号码邮箱
				me.tmpSwitchLog(); // 临时统计
			}

			me.focusInputBox();

			me.setUserInfo();
			me.initInputBox();
			me.initThemes();
			me.scoreIndex();

			// 绑定提交表单事件
			// fEventListen($id('login163'), 'submit', me.submitForm);
			$id('login163').onsubmit = function() {
				return me.submitForm();
			};

			// 大写锁定开启判断
			var oCapsLockTest = new CapsLock( {
				el : oPw,
				change : function(bFlag) {
					var oHint = $id('capsLockHint');
					if (bFlag) {
						oHint.style.display = 'block';
					} else {
						oHint.style.display = 'none';
					}
				}
			});

			me.KX(); // 可信标识
		}

		/**
		 * 根据cookie预设用户信息
		 */
		function fSetUserInfo() {
			var me = this;
			// 邮箱版本设定
			var sLogType = fGetCookie('logType');
			if (sLogType == '' || sLogType == null) {
				sLogType = gUserInfo.style;
			}
			switch (sLogType) {
			case '7':
				fSetStyle(7); // js6
				break;
			case '6':
				fSetStyle(6); // jy6
				break;
			case '5':
				me.setStyle(5); // js5
				break;
			case 'jy5':
			case '3':
				me.setStyle(3); // jy5
				break;
			default:
				me.setStyle(-1);
			}
			// 兼容logType并清除
			fSetCookie('logType', '', false);

			// 用户名设定
			var sUser = gUserInfo.username, sUid = fGetQueryHash('uid'), sErrorUsername = fGetQuery('errorUsername'), sResult;
			if (sUser != null) {
				oId.autocomplete = 'on';
			} else {
				oId.autocomplete = 'off';
			}
			try {
				oId.focus();
			} catch (e) {
			}
			if ((sUser != '' && sUser != null) || sErrorUsername != null) {
				sResult = sUser;
				if (sUid != null) {
					sResult = fCheckAccount(sUid);
				}
				// 错误页跳转参数
				if (sErrorUsername != null) {
					sResult = fCheckAccount(sErrorUsername);
				}
				oId.value = sResult;
				fCls(oIdL, 'showPlaceholder', 'remove');
				me.idInputEvent();
				//gMobileNumMail.getNumFromMail(oId.value);
				try {
					oPw.focus();
				} catch (e) {
				}
			}
		}

		/**
		 * 绑定输入框事件
		 */
		function fInitInputBox() {
			var me = this;
			var oLo = $id('loginBtn'), oRg = $id('lfBtnReg'), oRg2 = $id('lfBtnReg2'), oIdLabel = $id('idPlaceholder'), oAutoTips = $id('whatAutologinTip'), oPwLabel = $id('pwdPlaceholder'), oAutoLoginWrap = $id('lfAutoLogin'), oAutoLoginCheckbox = oAutoLoginWrap
					.getElementsByTagName('b')[0], oRemAutoLogin = $id('remAutoLogin'), oAutoLoginTxt = $id('remAutoLoginTxt'), oStyleConf = $id('styleConf'), oStyleConfBlk = $id('styleConfBlock');
			var oErrorAlert = $id('errorAlert'), oErrorMask = $id('errorMask');
			//帐号
			fEventListen(oIdL, 'mouseover', function() {
				fCls(oIdL, 'loginFormIpt-over', 'add');
			});
			fEventListen(oIdL, 'mouseout', function() {
				fCls(oIdL, 'loginFormIpt-over', 'remove');
			});
			fEventListen(oId, 'focus', function() {
				fCls(oId, 'loginFormTdIpt-focus', 'add');
				fCls(oIdL, 'loginFormIpt-focus', 'add');
			});
			fEventListen(oId, 'blur', function() {
				fCls(oIdL, 'loginFormIpt-focus', 'remove');
				if (oId.value == '') {
					fCls(oIdL, 'showPlaceholder', 'add');
					fCls(oId, 'loginFormTdIpt-focus', 'remove');
				} else {
					oId.value = fCheckAccount(oId.value);
				}
			});

			var sEventName = '';
			var bIsIe = false;
			if (document.body.onpropertychange === null) {
				sEventName = 'propertychange';
				var bIsIe = true;
			} else {
				sEventName = 'input';
				me.checkInputAlways();
			}
			var el = document.createElement('div');
			el.setAttribute('oninput', 'return;')
			if (typeof el.oninput === 'function') {
				sEventName = 'input';
				if (bIsIe) {
					me.checkInputAlways();
				}
			}
			fEventListen(oId, sEventName, me.idInputEvent);
			//点击双击文字
			fEventListen(oIdLabel, 'dbclick', function() {
				oId.focus();
			});
			fEventListen(oIdLabel, 'click', function() {
				oId.focus();
			});

			//密码
			fEventListen(oPwL, 'mouseover', function() {
				fCls(oPwL, 'loginFormIpt-over', 'add');
			});
			fEventListen(oPwL, 'mouseout', function() {
				fCls(oPwL, 'loginFormIpt-over', 'remove');
			});
			fEventListen(oPw, 'focus', function() {
				fCls(oPw, 'loginFormTdIpt-focus', 'add');
				fCls(oPwL, 'loginFormIpt-focus', 'add');
			});
			fEventListen(oPw, 'blur', function() {
				fCls(oPwL, 'loginFormIpt-focus', 'remove');
				if (oPw.value == '') {
					fCls(oPwL, 'showPlaceholder', 'add');
					fCls(oPwL, 'loginFormTdIpt-focus', 'remove');
				}
			});
			fEventListen(oPw, sEventName, me.checkPw);
			//点击双击文字
			fEventListen(oPwLabel, 'dbclick', function() {
				oPw.focus();
			});
			fEventListen(oPwLabel, 'click', function() {
				oPw.focus();
			});
			//十天自动登录checkbox
			fEventListen(oAutoLoginCheckbox, 'click', function() {
				if (oRemAutoLogin.checked) {
					fCls(oAutoLoginWrap, 'autoLogin-checked', 'remove');
					oRemAutoLogin.checked = false;
				} else {
					fCls(oAutoLoginWrap, 'autoLogin-checked', 'add');
					oRemAutoLogin.checked = true;
				}
			});
			fEventListen(oAutoLoginTxt, 'click', function() {
				if (oRemAutoLogin.checked) {
					fCls(oAutoLoginWrap, 'autoLogin-checked', 'remove');
					oRemAutoLogin.checked = false;
				} else {
					fCls(oAutoLoginWrap, 'autoLogin-checked', 'add');
					oRemAutoLogin.checked = true;
				}
			});
			//十天自动登录文字提示
			fEventListen(oAutoLoginTxt, 'mouseover', function() {
				oAutoTips.style.display = 'block';
			});
			fEventListen(oAutoLoginTxt, 'mouseout', function() {
				oAutoTips.style.display = 'none';
			});
			//登录按钮
			fEventListen(oLo, 'mouseover', function() {
				fCls(oLo, 'btn-login-hover', 'add');
			});
			fEventListen(oLo, 'mouseout', function() {
				oLo.className = 'btn btn-login';
			});
			fEventListen(oLo, 'mousedown', function() {
				fCls(oLo, 'btn-login-active', 'add');
			});
			//注册按钮
			fEventListen(oRg, 'mouseover', function() {
				fCls(oRg, 'btn-reg-hover', 'add');
			});
			fEventListen(oRg, 'mouseout', function() {
				oRg.className = 'btn btn-reg';
			});
			fEventListen(oRg, 'mousedown', function() {
				fCls(oRg, 'btn-reg-active', 'add');
			});
			fEventListen(oRg, 'mouseup', function() {
				oRg.className = 'btn btn-reg';
			});
			//手机号登录tab注册按钮
			fEventListen(oRg2, 'mouseover', function() {
				fCls(oRg2, 'btn-reg-hover', 'add');
			});
			fEventListen(oRg2, 'mouseout', function() {
				oRg2.className = 'btn btn-reg';
			});
			fEventListen(oRg2, 'mousedown', function() {
				fCls(oRg2, 'btn-reg-active', 'add');
			});
			fEventListen(oRg2, 'mouseup', function() {
				oRg2.className = 'btn btn-reg';
			});
			//版本选择
			fEventListen(oStyleConf, 'click', function() {
				oStyleConfBlk.style.display = 'block';
			});
			oStyleConfBlk.onmouseout = function(e) {
				var oE = e || window.event;
				var that = this;
				_fE(function() {
					oStyleConfBlk.style.display = 'none';
				}, oE, that);
			};
			//线路选择
			$id('locationTest').onmouseout = function(e) {
				var oE = e || window.event;
				var that = this;
				_fE(function() {
					$id('locationTest').style.display = 'none';
				}, oE, that);
			};
			//阻止事件触发
			function _fE(fFunc, oE, oThat) {
				var e = oE, relatedTarget = e.toElement || e.relatedTarget;
				while (relatedTarget && relatedTarget != oThat) {
					relatedTarget = relatedTarget.parentNode;
				}
				if (!relatedTarget) {
					fFunc();
				}
			}

			//还没设置手机号按钮2
			fEventListen($id('extBtnMoblogin'), 'click', function() {
				me.showPhoneReg(true);
			});
			//手机注册框关闭按钮
			fEventListen($id('phoneRegDivClose'), 'click', function() {
				me.showPhoneReg(false);
			});
			/*//关闭手机提示
			fEventListen($id('mobtips_close'), 'click', function(){gMobileNumMail.forbidden();});
			 */
		}

		/**
		 * 输入框聚焦
		 */
		function fFocusInputBox() {
			if (oId.value != '') {
				/*if(ntabOn == 1){
					gMobileNumMail.getNumFromMail(oId.value);
				}else{
					gMobileNumMail.getMailFromNum(oId.value);
				}*/
				fCls(oIdL, 'showPlaceholder', 'remove');
				fCls(oId, 'loginFormTdIpt-focus', 'add');
				oPw.focus();
				fCls(oPwL, 'loginFormIpt-focus', 'add');
			} else {
				oId.focus();
			}
		}

		/**
		 * 输入超长时隐藏后缀显示区
		 */
		function fIdInputEvent() {
			var oShowDomain = $id('showdomain'), oInputTest = $id('idInputTest');
			if (oId.value == '') {
				fCls(oIdL, 'showPlaceholder', 'add');
				oInputTest.innerHTML = '';
				oShowDomain.style.width = nDomainWidth + 'px';
			} else {
				fCls(oIdL, 'showPlaceholder', 'remove');
				fCls(oId, 'loginFormTdIpt-focus', 'add');
				oInputTest.innerHTML = oId.value;
				var tmpWidth = oInputTest.offsetWidth;
				if (tmpWidth - 130 >= 0 && tmpWidth - 130 <= nDomainWidth) {
					oShowDomain.style.width = nDomainWidth - (tmpWidth - 130)
							+ 'px';
				} else if (tmpWidth - 130 < 0) {
					oShowDomain.style.width = nDomainWidth + 'px';
				} else {
					oShowDomain.style.width = '0px';
				}
			}
		}

		/**
		 * 检查密码输入框状态
		 */
		function fCheckPw() {
			if (oPw.value != '') {
				fCls(oPwL, 'showPlaceholder', 'remove');
				fCls(oPw, 'loginFormTdIpt-focus', 'add');
			} else {
				fCls(oPwL, 'showPlaceholder', 'add');
			}
		}

		/**
		 * 持续检查输入框状态
		 */
		function fCheckInputAlways() {
			var me = this;
			window.oIntervalCheckInputAlways = setInterval(function() {
				if (oId.value != '') {
					fCls(oIdL, 'showPlaceholder', 'remove');
					fCls(oId, 'loginFormTdIpt-focus', 'add');
				} else {
					fCls(oIdL, 'showPlaceholder', 'add');
				}
				me.idInputEvent();
				me.checkPw();
			}, 500);
		}

		/**
		 * 字符转换（全角转半角，中文逗号转英文逗号）
		 * @param  {[type]} s [description]
		 * @return {[type]}   [description]
		 */
		function fHandleString(s) {
			var result = "";
			for ( var i = 0; i < s.length; i++) {
				if (s.charCodeAt(i) == 12288) {
					result += String.fromCharCode(s.charCodeAt(i) - 12256);
					continue;
				}
				if (s.charCodeAt(i) > 65280 && s.charCodeAt(i) < 65375) {
					result += String.fromCharCode(s.charCodeAt(i) - 65248);
				} else {
					result += String.fromCharCode(s.charCodeAt(i));
				}
			}
			result.replace(/。/g, '.');
			return result;
		}

		/**
		 * 注册手机号码遮罩与弹框
		 * @param  {Boolean} bType 是否改变目标url
		 */
		function fShowPhoneReg(bType) {
			fResize();
			var sUrl = 'http://e.mail.163.com/mobilemail/maildoor/home.jsp', oDiv = $id('phoneRegDiv'), oIframe = $id('phoneRegFrame'), oMask = $id('mask');
			if (bType) {
				if (oIframe.src != sUrl) {
					oIframe.src = sUrl;
				}
			}
			oMask.style.display = oDiv.style.display = (bType ? '' : 'none');
		}

		/**
		 * 绑定tab事件
		 */
		function fSwitchTab() {
			var me = this;
			var oTab = $id('loginBlock'), oTab1 = $id('lbNormal'), oTab2 = $id('lbMob'), oIdLabel = $id('idPlaceholder');
			var oInputTest = $id('idInputTest');
			me.hideError();

			if (ntabOn == 1) {
				oIdLabel.innerHTML = '手机号码';
				sTmpId = oId.value;
				sTmpInput = oId.value;
				sTmpPwd = oPw.value;
				oTab.className = tab2Cls;
				ntabOn = 2;
				fEventUnlisten(oTab2, 'mouseover', me.switchTabTimeout);
				fEventUnlisten(oTab2, 'mouseout', me.setbSwitchTabTimeout);
				fEventListen(oTab1, 'mouseover', me.switchTabTimeout);
				fEventListen(oTab1, 'mouseout', me.setbSwitchTabTimeout);
				oId.value = sTmpMob;
				oPw.value = sTmpMobPwd;
				oInputTest.innerHTML = sTmpMobInput;
				if (sTmpMob == '') {
					fCls(oIdL, 'showPlaceholder', 'add');
				}
				if (sTmpMobPwd == '') {
					fCls(oPwL, 'showPlaceholder', 'add');
				} else {
					fCls(oPwL, 'showPlaceholder', 'remove');
				}
			} else {
				oIdLabel.innerHTML = '邮箱帐号或手机号';
				sTmpMob = oId.value;
				sTmpMobInput = oId.value;
				sTmpMobPwd = oPw.value;
				oTab.className = tab1Cls;
				ntabOn = 1;
				fEventUnlisten(oTab1, 'mouseover', me.switchTabTimeout);
				fEventUnlisten(oTab1, 'mouseout', me.setbSwitchTabTimeout);
				fEventListen(oTab2, 'mouseover', me.switchTabTimeout);
				fEventListen(oTab2, 'mouseout', me.setbSwitchTabTimeout);
				oId.value = sTmpId;
				oPw.value = sTmpPwd;
				oInputTest.innerHTML = sTmpInput;
				if (sTmpId == '') {
					fCls(oIdL, 'showPlaceholder', 'add');
				}
				if (sTmpPwd == '') {
					fCls(oPwL, 'showPlaceholder', 'add');
				} else {
					fCls(oPwL, 'showPlaceholder', 'remove');
				}
			}
			me.idInputEvent();
			me.focusInputBox();
		}

		function fSwitchTabTimeout() {
			setTimeout(function() {
				if (bSwitchTabTimeout) {
					indexLogin.switchTab();
				} else {
					bSwitchTabTimeout = true;
				}
			}, 300);
		}

		function fSetbSwitchTabTimeout() {
			bSwitchTabTimeout = false;
		}

		/**
		 * 设置版本
		 * @param  {Number} n 版本号
		 */
		function fSetStyle(n) {
			var oStyleConfBlk = $id('styleConfBlock');
			var aVers = oStyleConfBlk.getElementsByTagName('a');
			for ( var i = 0, l = aVers.length; i < l; i++) {
				aVers[i].className = '';
			}
			oStyle.value = n;
			$id('styleconf' + n).className = 'verSelected';
			$id('styleConf').innerHTML = $id('styleconf' + n).innerHTML + ' __tag_2727$66_</b>';
			oStyleConfBlk.style.display = 'none';
			// 判断是否全程ssl
			if (n == 3 || n == 6) {
				// 简约5\简约6 显示全程ssl
				$id('loginSSL').style.display = 'none';
				$id('AllSSL').style.display = 'block';
			} else {
				$id('loginSSL').style.display = 'block';
				$id('AllSSL').style.display = 'none';
				$id('AllSSLCkb').checked = false;
			}
		}

		/**
		 * 登录提交
		 * @return {Boolean}
		 */
		function fSubmitForm() {
			var me = this;
			// 检查输入
			oId.value = fTrim(oId.value);
			if (oId.value == '') {
				//alert('\请输入您的帐号?');
				oId.focus();
				me.showError(ntabOn);
				return false;
			}
			if (oPw.value.length == '') {
				//alert('\请输入您的密码?');
				oPw.focus();
				me.showError(3);
				return false;
			} else if (!fTrim(oPw.value)) { // 特殊处理密码全空格
				me.showError(460);
				return false;
			}

			// starttime 登录时间统计
			if (bStartTime) {
				var sNow = new Date().getTime();
				fSetCookie("starttime", sNow, false);
				bStartTime = false;
			}

			//用户名、密码不标准字符处理
			oId.value = me.handleString(oId.value);
			oPw.value = me.handleString(oPw.value);

			//16位密码截断
			if (oPw.value.length > 16) {
				oPw.value = oPw.value.substr(0, 16);
			}
			//保存十天免登录
			if ($id('remAutoLogin').checked) {
				$id('savelogin').value = 1;
			} else {
				$id('savelogin').value = 0;
			}
			//登陆后锁定tab
			var oTabDisabled;
			if (ntabOn == 1) {
				oTabDisabled = $id('lbMob');
			} else {
				oTabDisabled = $id('lbNormal');
			}
			fEventUnlisten(oTabDisabled, 'mouseover', me.switchTabTimeout);
			fEventUnlisten(oTabDisabled, 'mouseout', me.setbSwitchTabTimeout);

			var fReBindSwitchTab = setInterval(function() {
				try {
					//若有错误提示，则重新绑定切换tab事件
					if (window.frames["frameforlogin"].document.body.className == 'error') {
						fEventListen(oTabDisabled, 'mouseover',
								me.switchTabTimeout);
						fEventListen(oTabDisabled, 'mouseout',
								me.setbSwitchTabTimeout);
						clearInterval(fReBindSwitchTab);
					}
				} catch (e) {
				}
			}, 500);

			//储存登录信息
			gUserInfo.username = oId.value;
			gUserInfo.style = oStyle.value;
			if (bIsFirstLog) {
				//if($id('SslLogin').checked){
				gUserInfo.safe = 1;
				sLoginFunc = 'ssl';
				/*}else{
					gUserInfo.safe = 0;
					sLoginFunc = 'http';
				}*/
			} else {
				if (sLoginFunc == 'ssl') {
					gUserInfo.safe = 1;
				} else {
					gUserInfo.safe = 0;
				}
			}
			gVisitorCookie.saveInfo();
			//弹出超时对话框
			if (bIsFirstLog) {
				sCoremailCookie = fGetCookie('Coremail');
				setTimeout(function() {
					//若无错误提示，则判断为登录超时
						try {
							if (window.frames["frameforlogin"].document.body.className != 'error') {
								me.showTheHttpLogin();
							}
						} catch (e) {
							me.showTheHttpLogin();
						}
					}, 5000);
			}
			//判断登录来源
			var sUrlRace = aSpdResult[1] + '_' + aSpdResult[0] + '_'
					+ aSpdResult[2] + '_' + aSpdResult[3], sUrlDf = (function() {
				var sDf = fGetQueryHash('df');
				if (sDf == null) {
					// 判断不同tab
					var bIsMobile = ntabOn == 2;
					if (bIsMobile) {
						sDf = 'mail163_mobile';
					} else {
						sDf = 'mail163_letter';
					}
				}
				fSetCookie('df', sDf, false);
				return sDf;
			})(), sUrlUid = oId.value + '@' + gOption.sDomain;
			// 全程SSL
			var sAllSSL = ($id('AllSSLCkb').checked ? fUrlP('allssl', 'true')
					: '');
			//选择登录方式
			switch (sLoginFunc) {
			case 'ssl':
				var oForm = $id('login163');
				oForm.action = gOption.sSslAction + fUrlP('df', sUrlDf, true)
						+ fUrlP('from', 'web') + fUrlP('funcid', 'loginone')
						+ fUrlP('iframe', '1') + fUrlP('language', '-1')
						+ fUrlP('passtype', '1') + fUrlP('product', 'mail163')
						+ fUrlP('net', sLocationInfo)
						+ fUrlP('style', oStyle.value)
						+ fUrlP('race', sUrlRace) + fUrlP('uid', sUrlUid)
						+ sAllSSL;
				if (bIsFirstLog) {
					bIsFirstLog = false;
					return true;
				} else {
					oForm.submit();
				}
				break;
			case 'http':
				window.sHttpAction = gOption.url + fUrlP('df', sUrlDf, true)
						+ fUrlP('from', 'web') + fUrlP('language', '-1')
						+ fUrlP('net', sLocationInfo) + fUrlP('race', sUrlRace)
						+ fUrlP('style', oStyle.value) + fUrlP('uid', sUrlUid);
				loginRequest('fEnData');
				return false;
				break;
			default:
				;
			}
			return false;
		}

		/**
		 * 登录超时弹框
		 * @return {Boolean}
		 */
		function fShowTheHttpLogin() {
			var me = this;
			var oIdLoginBtn = $id('idLoginBtn'), oHttpTips = $id('enhttpTips');
			fResize();
			window.frames['frameforlogin'].location.href = 'about:blank';
			$id('enhttpblock').style.display = 'block';
			$id('mask').style.display = 'block';
			$id('enhttpblock').focus();
			if (sLoginFunc == 'ssl') {
				var sCoremailCookieNew = fGetCookie('Coremail');
				if (sCoremailCookieNew != sCoremailCookie) {
					oHttpTips.innerHTML = '登录成功..等待跳转..';
					oIdLoginBtn.style.display = 'none';
					return false;
				} else {
					var nCount = 3;
					oHttpTips.innerHTML = '__tag_2921$27_' + nCount + '__tag_2921$61_&nbsp;秒后自动重试';
					oIdLoginBtn.innerHTML = '立刻登录';
					fEventUnlisten(oIdLoginBtn, 'click', _fLoginFunc);
					fEventListen(oIdLoginBtn, 'click', _fLoginFunc1);
					window.gBackwards = setInterval(function() {
						nCount = nCount - 1;
						$id('backwards').innerHTML = nCount;
						if (nCount == 0) {
							clearInterval(window.gBackwards);
							sLoginFunc = 'http';
							me.submitForm();
							me.showTheHttpLogin();
						}
					}, 1000);
					return false;
				}
			} else {
				oHttpTips.innerHTML = '点击重新尝试普通加密方式登录';
				oIdLoginBtn.innerHTML = '重试';
				fEventUnlisten(oIdLoginBtn, 'click', _fLoginFunc1);
				fEventListen(oIdLoginBtn, 'click', _fLoginFunc);
			}

			// 登录函数引用
			function _fLoginFunc() {
				me.submitForm();
			}
			function _fLoginFunc1() {
				me.submitForm();
				oHttpTips.innerHTML = '点击重新尝试https登录';
				oIdLoginBtn.innerHTML = '重试';
				clearInterval(window.gBackwards);
				fEventUnlisten(oIdLoginBtn, 'click', _fLoginFunc1);
				fEventListen(oIdLoginBtn, 'click', _fLoginFunc);
			}
		}

		/**
		 * 错误信息提示
		 * @param  {Number} nCode 错误代码
		 */
		function fShowError(nCode) {
			var me = this;
			var sErrType = '', nTarget = 0, nBasePoint = 217;
			var oErrAlert = $id('errorAlert'), oErrArr = $id('errorArr'), oErrDetail = $id('errorDetail');
			if (!isNaN(nCode)) {
				nCode = nCode - 0;
			}
			switch (nCode) {
			case 'Login_Timeout':
				sErrType = 'loginTimeout';
				nTarget = 0;
				break;
			case 1:
				sErrType = 'noId';
				nTarget = 1;
				break;
			case 2:
				sErrType = 'noPhone';
				nTarget = 1;
				break;
			case 3:
				sErrType = 'noPw';
				nTarget = 2;
				break;
			case 460:
				sErrType = 'inputWrong';
				nTarget = 0;
				break;
			case 420:
				sErrType = 'inputWrong';
				nTarget = 0;
				break;
			case 422:
				sErrType = 'idLocked';
				nTarget = 1;
				break;
			/*case 412:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;*///已单独处理
			case 414:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;
			case 415:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;
			case 416:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;
			case 417:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;
			case 418:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;
			case 419:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;
			default:
				sErrType = 'systemBusy';
				nTarget = 0;
			}
			if (nCode) {
				$id('errorTitle').innerHTML = gErrorInfo[sErrType].title;
				if (gErrorInfo[sErrType].info) {
					$id('errorInfo').innerHTML = gErrorInfo[sErrType].info;
					oErrDetail.style.display = 'block';
				} else {
					oErrDetail.style.display = 'none';
				}
				if (nTarget == 1) {
					nBasePoint -= 30;
				} else if (nTarget == 2) {
					nBasePoint += 30;
				}
				$id('errorMask').style.display = 'block';
				fCls(oErrAlert, 'errorAlert-show', 'add');
				oErrAlert.style.top = nBasePoint - oErrAlert.offsetHeight / 2
						+ 'px';
				oErrArr.style.top = (oErrAlert.offsetHeight - oErrArr.offsetHeight) / 2 + 'px';

				fEventListen(document, 'click', me.hideError);
			}
		}

		/**
		 * 隐藏错误信息提示
		 */
		function fHideError() {
			fCls($id('errorAlert'), 'errorAlert-show', 'remove');
			$id('errorMask').style.display = 'none';
			fEventUnlisten(document, 'click', indexLogin.hideError);
		}

		/**
		 * 设置垂直居中
		 */
		function fVericalAlignBody() {
			var nBodyHeight = 730;
			var nClientHeight = document.documentElement.clientHeight;
			if (nClientHeight >= nBodyHeight + 2) {
				var nDis = (nClientHeight - nBodyHeight) / 2;
				document.body.style.paddingTop = nDis + 'px';
			} else {
				document.body.style.paddingTop = '0px';
			}
		}

		/**
		 * 重写可信标识
		 */
		function fKX() {
			function RndNum_CNNIC(k) {
				for ( var rnd = "", i = k; i--;) {
					rnd += Math.floor(Math.random() * 10);
				}
				return rnd;
			}
			var oKX = $id('KX_IMG');
			var oKXimg = oKX.getElementsByTagName('img')[0];
			var sHref = 'https://ss.knet.cn/verifyseal.dll?sn=e12051044010020841301459&ct=df&pa=';
			var sPa = RndNum_CNNIC(6);
			oKX.href = sHref + sPa;
		}

		/**
		 * 临时统计
		 */
		function fTmpSwitchLog() {
			var sJsLogUrl = 'http://count.mail.163.com/beacon/webmail.gif?product=mail163tab2&type=from163com';
			sJsLogUrl = sJsLogUrl + '&rnd=' + (new Date()).getTime();
			var oJsLogImg = $id('jslogimg');
			if (!oJsLogImg) {
				oJsLogImg = document.createElement("IMG");
				oJsLogImg.style.display = 'none';
				oJsLogImg.alt = '';
			}
			oJsLogImg.setAttribute("src", sJsLogUrl);
			if (oJsLogImg.alt == '') {
				document.body.appendChild(oJsLogImg);
				oJsLogImg.alt = 'set';
			}
			return;
		}

		/*------------- 主题图相关 ------------*/

		/**
		 * 获取个性化用户数据
		 * @return {Object} 个性化数据标志位组合对象
		 */
		function fAdGetUdData() {
			try {
				var oData = gAdUserPropertyData;
				if (oData) {
					return oData;
				} else {
					oData = {};
				}
				// 读取cookie
				oData['all'] = fGetCookie('_mail_userattr_');
				if (oData['all'] && oData['all'].length > 0) {
					oData['mobile'] = oData['all'].split("/")[0] - 0;
					oData['yixin'] = oData['all'].split("/")[1] - 0;
					oData['news'] = oData['all'].split("/")[2] - 0;
					oData['music'] = oData['all'].split("/")[3] - 0;
					oData['read'] = oData['all'].split("/")[4] - 0;
				}
				gAdUserPropertyData = oData;

				return oData;
			} catch (e) {
				return false;
			}
		}

		function fInitThemes() {
			var me = this;

			gAdManager.init();

			me.oTheme = gAdManager.getAll( {
				position : "index",
				domain : "163"
			});

			me.showThemes(me.oTheme);
		}

		/**
		 * 主题图显示
		 * @param  {Object} oTheme 素材对象
		 */
		function fShowThemes(oTheme) {
			var me = this;
			var oThemeWrap = $id('theme'), oBg = $id('mainBg'), oCnt = $id('mainCnt');
			// 重置oMaterial
			oThemeWrap.innerHTML = '';
			oThemeWrap.style.cssText = '';
			oBg.style.cssText = '';
			oCnt.style.cssText = '';

			var oMaterial = oTheme.material;

			// 为推广平台提供uid
			var sUid = (gUserInfo.username ? gUserInfo.username : 'nt') + '@'
					+ gOption.sDomain;
			oMaterial.showLink && (oMaterial.showLink += '&uid=' + sUid);

			if (oMaterial.product && oMaterial.product == 'bizAD') {
				// 商广特殊处理，不统计点击链接，否则无法正常跳转
			} else {
				oMaterial.bgLink
						&& (oMaterial.bgLink += '&_r_ignore_uid=' + sUid);
			}

			// 展示数据统计
			if (oMaterial.showLink && oMaterial.showLink != 0) {
				me.themeShowLog(oMaterial.showLink);
			}

			// 易信短信推送
			if (oMaterial.product && oMaterial.product == 'yixin') {
				fEventListen(oThemeWrap, 'click', me.adSendMsg);
			} else {
				fEventUnlisten(oThemeWrap, 'click', me.adSendMsg);
			}

			// 含子素材
			if (oTheme.childrenMaterials) {
				var aChildren = oTheme.childrenMaterials;
				oMaterial = oTheme.childMaterail;

				// 易信感恩节
				if (oMaterial.product == 'yixin-ThanksGiving') {
					var sBtnCount = aChildren.length;
					var oThanksBtns = document.createElement('div');
					oThanksBtns.id = 'thanksBtns';
					oThanksBtns.style.cssText = 'position:absolute;left:85px;bottom:12px;zoom:1';

					oThemeWrap.appendChild(oThanksBtns);
					for ( var i = 0; i < sBtnCount; i++) {
						var oLink = document.createElement('a');
						oLink.style.cssText = 'display:block;margin-right:45px;float:left;width:78px;height:76px;outline:none';
						oLink.className = 'thanksBtns-' + i;
						oLink.href = 'javascript:void(0)';
						oLink.setAttribute('hideFocus', true);
						oLink.setAttribute('thanksIndex', i);
						oLink.onclick = function() {
							var that = this;
							_fImgLoader(
									aChildren[that.getAttribute('thanksIndex') - 0].bgCnt,
									function() {
										oBg.style.backgroundColor = aChildren[that
												.getAttribute('thanksIndex') - 0].bgColor;
										oCnt.style.backgroundImage = 'url(' + aChildren[that
												.getAttribute('thanksIndex') - 0].bgCnt + ')';
									});
						}
						$id('thanksBtns').appendChild(oLink);
					}
				}
			}

			// 图片显示处理
			if (oMaterial.bgColor) {
				oBg.style.backgroundColor = oMaterial.bgColor;
			} else {
				oBg.style.backgroundColor = '#fff';
			}
			if (oMaterial.bgCnt) {
				_fImgLoader(
						oMaterial.bgCnt,
						function() {
							oCnt.style.backgroundImage = 'url(' + oMaterial.bgCnt + ')';
							oCnt.style.backgroundRepeat = 'no-repeat';
							oCnt.style.backgroundPosition = 'center top';
						});
			}
			if (oMaterial.bgSrc) {
				_fImgLoader(oMaterial.bgSrc, function() {
					oBg.style.backgroundImage = 'url(' + oMaterial.bgSrc + ')';
					if (oMaterial.bgSrcRepeat) {
						oBg.style.backgroundRepeat = oMaterial.bgSrcRepeat;
					} else {
						oBg.style.backgroundRepeat = 'repeat-x';
					}
					if (oMaterial.bgSrcPosition) {
						oBg.style.backgroundPosition = oMaterial.bgSrcPosition;
					} else {
						oBg.style.backgroundPosition = 'left top';
					}
				});
			}

			// 左右背景图处理
			fEventUnlisten(window, 'resize', _fLeftRightBg);
			if (oMaterial.bgLeft || oMaterial.bgRight) {
				_fLeftRightBg(1);
				if ($id('dvbg2012left')
						&& $id('dvbg2012left').style.display == 'block') {
					fEventListen(window, 'resize', _fLeftRightBg);
				}
			} else {
				$id('dvbg2012left')
						&& ($id('dvbg2012left').style.display = 'none');
				$id('dvbg2012right')
						&& ($id('dvbg2012right').style.display = 'none');
			}

			// 首页评分
			if (oMaterial.scoreIndex) {
				$id('scoreIndex').style.display = "block";
				window.oScoreIndex = oMaterial;
			} else {
				$id('scoreIndex').style.display = "none";
			}

			//云音乐播放
			if (oMaterial.musicLink) {
				$id('musicLink').style.display = "block";
				$id('musicLink').href = oMaterial.musicLink;
			} else {
				$id('musicLink').style.display = "none";
			}

			// 云音乐
			if (oMaterial.product && oMaterial.product == 'yunMusic') {
				var oLink = document.createElement('div');
				oLink.style.cssText = 'position:absolute;width:1000px;height:600px;left:0;top:0;cursor:pointer';
				oLink.title = '网易云音乐';
				oThemeWrap.appendChild(oLink);
				oLink.setAttribute('hideFocus', true);
				oLink.onclick = function() {
					_fMusicUidCheck();
					return false;
				}
			}

			// 带链接主题图
			if (oMaterial.bgLink) {
				var oLink = document.createElement('a');
				oLink.style.cssText = 'position:absolute;width:605px;height:600px;left:0;top:0;cursor:pointer';
				oLink.href = oMaterial.bgLink;
				oLink.target = "_blank";
				oThemeWrap.appendChild(oLink);
				oLink.setAttribute('hideFocus', true);
			}

			// 带视频播放主题图
			if (oMaterial.video) {
				var aVideoPlayer = document.createElement('div');
				aVideoPlayer.style.cssText = 'position:absolute;overflow:hidden;width:'
						+ oMaterial.videoWd
						+ 'px;height:'
						+ oMaterial.videoHt
						+ 'px;top:'
						+ oMaterial.videoTop
						+ 'px;left:'
						+ oMaterial.videoLeft + 'px';
				aVideoPlayer.innerHTML = '__tag_3313$29_';
				oThemeWrap.appendChild(aVideoPlayer);
			}

			// 带额外链接主题图
			if (oMaterial.extLink) {
				var oExtLink = document.createElement('a');
				oExtLink.style.cssText = 'position:absolute;cursor:pointer;width:'
						+ oMaterial.extLinkWd
						+ 'px;height:'
						+ oMaterial.extLinkHt
						+ 'px;top:'
						+ oMaterial.extLinkTop
						+ 'px;left:'
						+ oMaterial.extLinkLeft + 'px';
				oExtLink.href = oMaterial.extLink;
				oExtLink.target = "_blank";
				oExtLink.title = oMaterial.extLinkTitle ? oMaterial.extLinkTitle
						: '';
				oThemeWrap.appendChild(oExtLink);
				oExtLink.setAttribute('hideFocus', true);
			}

			function _fMusicUidCheck() {
				var sInterface = 'http://mobilemail.mail.163.com/mobilemail/webmail/entrace.do?from=index&';
				var sUser = gUserInfo.username;
				var sPInfo = fGetCookie('P_INFO');
				if (sPInfo) {
					var aInfo = sPInfo.split("|");
					var sEmail = aInfo[0];
				}
				sUser = sEmail;
				if (sUser == null) {
					sUser = $id('idInput').value;
				}
				if (sUser == '') {
					bHasUid = true;
				}
				if (sUser.indexOf('@163.com') == -1) {
					sUser = sUser + '@163.com';
				}
				var sCookieUse = sUser;
				var bHasUid = false;
				var sUsedUid = fGetCookie('music_uid');
				var aUsedUid = [];
				if (sUsedUid) {
					if (sUsedUid.indexOf(',') > -1) {
						aUsedUid = sUsedUid.split(',');
					} else {
						aUsedUid.push(sUsedUid);
					}
				}
				var nLen = aUsedUid.length;
				for ( var i = 0; i < nLen; i++) {
					if (sCookieUse == aUsedUid[i]) {
						bHasUid = true;
						break;
					}
				}
				window.nMusicType = oMaterial.musicType;

				if (sUser == '@163.com') {
					bHasUid = true;
				}
				if (bHasUid) {
					// 不发送
					me.musicCallback( {
						'code' : 999
					});
					return false;
				} else {
					aUsedUid.push(sCookieUse);
					fSetCookie("music_uid", aUsedUid.join(','), (new Date(2014,
							7, 1)).toGMTString());
					fGetScript(sInterface + 'uid=' + sUser + '&type='
							+ window.nMusicType
							+ '&callback=indexLogin.musicCallback');
				}
			}

			var bRetrySetLeftRight = true;
			function _fLeftRightBg(flag) {
				// 创建左右背景结构
				var nWidth = (oBg.offsetWidth - 1000) / 2;
				if (oBg.offsetWidth == 0 && bRetrySetLeftRight) {
					setTimeout(function() {
						bRetrySetLeftRight = false;
						_fLeftRightBg();
					}, 400);
					return;
				}
				if (oBg.offsetWidth <= 1000) {
					return;
				}
				var oDvBg1 = $id('dvbg2012left');
				var oDvBg2 = $id('dvbg2012right');
				if (oMaterial.bgLeft) {
					if (!oDvBg1) {
						var oDvBg1 = document.createElement('div');
						oDvBg1.setAttribute('id', 'dvbg2012left');
						__fSetBgStyle(oDvBg1, oMaterial.bgLeft);
						oDvBg1.style.right = '1000px';
						oDvBg1.style.backgroundPosition = 'top right';
						oCnt.appendChild(oDvBg1);
					} else {
						__fSetBgStyle(oDvBg1, oMaterial.bgLeft);
						oDvBg1.style.width = nWidth + 'px';
					}
				}
				if (oMaterial.bgRight) {
					if (!oDvBg2) {
						var oDvBg2 = document.createElement('div');
						oDvBg2.setAttribute('id', 'dvbg2012right');
						__fSetBgStyle(oDvBg2, oMaterial.bgRight);
						oDvBg2.style.left = '1000px';
						oDvBg2.style.backgroundPosition = 'top left';
						oCnt.appendChild(oDvBg2);
					} else {
						__fSetBgStyle(oDvBg2, oMaterial.bgRight);
						oDvBg2.style.width = nWidth + 'px';
					}
				}

				//IE、chrome执行两次resize绑定事件临时解决方案
				if (flag == 1) {
					oDvBg1.style.display = 'block';
					oDvBg2.style.display = 'block';
				} else {
					if (oDvBg1.style.display == 'none') {
						oDvBg1.style.display = 'none';
						oDvBg2.style.display = 'none';
					} else {
						oDvBg1.style.display = 'block';
						oDvBg2.style.display = 'block';
					}
				}

				function __fSetBgStyle(o, sImgSrc) {
					o.style.height = '600px';
					o.style.width = nWidth + 'px';
					o.style.top = '0';
					if (sImgSrc.indexOf('http://') == -1) {
						o.style.backgroundColor = sImgSrc;
						o.style.backgroundImage = '';
					} else {
						o.style.backgroundColor = '';
						o.style.backgroundImage = 'url(' + sImgSrc + ')';
						o.style.backgroundRepeat = 'no-repeat';
					}
					o.style.position = 'absolute';
				}
			}

			function _fImgLoader(imgSrc, fSuccCallBack, fErrorCallBack,
					nTimeout) {
				window.bImgLoaderIsLoaded = false;
				var oImg = document.createElement('IMG');
				if (fSuccCallBack) {
					oImg.onload = function() {
						fSuccCallBack();
						window.bImgLoaderIsLoaded = true;
					};
				}
				if (fErrorCallBack) {
					oImg.onerror = function() {
						fErrorCallBack();
					};
				}
				var nTime = 0;
				if (nTimeout) {
					nTime = nTimeout;
				}
				setTimeout(function() {
					oImg.src = imgSrc;
				}, nTime);
			}
		}

		/**
		 * 主题图广告展现统计
		 * @param  {String} sLink 展示统计链接url
		 */
		function fThemeShowLog(sLink) {
			var oImg = document.getElementById("AD__IMG");
			if (!oImg) {
				oImg = document.createElement("IMG");
				oImg.id = 'AD__IMG';
				oImg.width = "1px";
				oImg.height = "1px";
				oImg.style.position = 'absolute';
				oImg.style.left = '-100px';
				oImg.style.top = '-100px';
				document.body.appendChild(oImg);
			}
			oImg.src = sLink + '&rnd=' + Math.random();
		}

		/**
		 * 首页评分
		 * @return {Object} 首页评分方法对象
		 */
		function fScoreIndex() {
			var o = {
				open : fScoreIndexOpen,
				close : fScoreIndexClose
			};

			function fScoreIndexOpen() {
				if (oScoreIndex) {
					fResize();
					$id('mask').style.display = 'block';
					$id('scoreIndexPop').style.display = 'block';
					$id('scoreIndexPopIfm').src = '/scoreindex.htm';
				} else {
					return;
				}
			}

			function fScoreIndexClose() {
				$id('mask').style.display = 'none';
				$id('scoreIndexPop').style.display = 'none';
			}

			return o;
		}

		/**
		 * 易信短信推送
		 */
		function fAdSendMsg() {
			var oData = indexLogin.adGetUdData();
			// 没有cookie，或者没有开通手机号码邮箱的，直接返回
			if (!oData.all || oData.mobile != 1) {
				return;
			}
			// 获取主帐号！
			var sOrgUid = fGetCookie('_mail_orguid_');
			if (!sOrgUid) {
				return;
			}
			var oImg = document.getElementById("AD_MSG_IMG");
			if (!oImg) {
				oImg = document.createElement("IMG");
				oImg.id = 'AD_MSG_IMG';
				oImg.width = "1px";
				oImg.height = "1px";
				oImg.style.position = 'absolute';
				oImg.style.left = '-100px';
				oImg.style.top = '-100px';
				document.body.appendChild(oImg);
			}
			oImg.src = 'http://security.mail.163.com/mobileserv/promoteSms.do?uid='
					+ sOrgUid
					+ '&product=mlyxpromote&area=index&rnd='
					+ Math.random();
		}

		/**
		 * 云音乐回调函数
		 * @param  {Object} o JSONP成功回调对象
		 */
		function fMusicCallback(o) {
			var oYunMusic = $id('yunMusic'), oMask = $id('mask');
			$id('yunMusicClose').onclick = function() {
				oYunMusic.style.display = 'none';
				oMask.style.display = 'none';
			}
			$id('yunMusicConfirm').onclick = function() {
				oYunMusic.style.display = 'none';
				oMask.style.display = 'none';
			}
			var sLink = 'http://music.163.com/?act=cmad_20130517_08';
			//盛夏的果实
			if (window.nMusicType == 12) {
				sLink = 'http://music.163.com/#/m/playlist?id=2838260';
				$id('yunMusicConfirm').href = sLink;
			}

			if (o.code == 999) {
				var sHtml = '百万曲库320K高音质，500位音乐人联合推荐__tag_3576$39_让您的音乐世界永不落伍，与潮流同步！';
				$id('yunMusicText1').innerHTML = sHtml;
				$id('yunMusicText2').innerHTML = '好音乐，开启新音乐之旅，尽在__tag_3578$51_&nbsp;__tag_3578$120_&nbsp;网易云音乐__tag_3578$245_。';
			}
			oMask.style.height = document.documentElement.clientHeight + 'px';
			oMask.style.display = 'block';
			oYunMusic.style.display = 'block';
		}
	})(window);

	/**
	 * 添加删除classname
	 * @param  {Object} o     修改对象dom元素
	 * @param  {String} sCls  classname
	 * @param  {String} sFunc 修改classname方式：add/remove
	 */
	function fCls(o, sCls, sFunc) {
		var oTar = o;
		var nRes = oTar.className.indexOf(sCls);
		if (sFunc == 'add') {
			if (nRes == -1) {
				oTar.className = oTar.className + ' ' + sCls;
			} else {
				return;
			}
		}
		if (sFunc == 'remove') {
			if (nRes != -1) {
				var sCls = '\\s' + sCls
				var rCls = new RegExp(sCls, 'g');
				oTar.className = oTar.className.replace(rCls, '');
			} else {
				return;
			}
		}
	}

	/**
	 * 测速+定位服务
	 */
	//电信t:0,联通c:1,教育网e:2
	var oSpdTestPosition = {
		gz : [ 'gzt', 'gzc', 'gze' ],
		hz : [ 'hz' ],
		bj : [ 't', 'c', 'e' ]
	};
	var aSpdResult = [ -2, -2, -2, 'db' ], aSpdStartTime = [], aSpdEndTime = [], aSpdTmpTime = [], aSpdQueue = [
			't', 'c', 'e' ];
	var bSpdAuto = true;
	var sLocationInfo = 'failed';
	var fSpeedTestPre = function(sArea) {
		var nSpdRndPosition = Math.random() * 100;
		// 默认机率
		aSpdQueue = oSpdTestPosition.gz;
		aSpdResult[3] = 'gz';
		if (nSpdRndPosition <= 33) {
			aSpdQueue = oSpdTestPosition.hz;
			aSpdResult[3] = 'hz';
		}
		if (nSpdRndPosition > 33 && nSpdRndPosition <= 66) {
			aSpdQueue = oSpdTestPosition.bj;
			aSpdResult[3] = 'bj';
		}

		if (sArea) {
			aSpdQueue = oSpdTestPosition[sArea];
			aSpdResult[3] = sArea;
		}
		try {
			for (i = 0; i < aSpdQueue.length; i++) {
				var sLoca = aSpdQueue[i];
				fGetScript('http://' + sLoca + 'p.127.net/cte/' + sLoca
						+ 'test?' + (new Date()).getTime());
			}
		} catch (e) {
			fNetErrDebug('ErrfSpeedTestPre');
		}
	};
	var fSpeedTest = function(nCount) {
		try {
			var nRnd;
			if (bSpdAuto) {
				fNetErrDebug('fSpeedTest' + nCount);
				aSpdStartTime[nCount] = (new Date()).getTime();
				nRnd = aSpdStartTime[nCount];
			} else {
				aSpdStartTimeUser[nCount] = (new Date()).getTime();
				nRnd = aSpdStartTimeUser[nCount];
			}
			var sLoca = aSpdQueue[nCount];
			fGetScript('http://' + sLoca + 'p.127.net/cte/' + sLoca + 'p?'
					+ nRnd);
			if (bSpdAuto) {
				aSpdResult[nCount] = -1;
			}
		} catch (e) {
			fNetErrDebug('ErrfSpeedTest' + nCount);
		}
	};
	var fSpd = function(nCount) {
		try {
			if (bSpdAuto) {
				fNetErrDebug('Spd' + nCount);
				aSpdEndTime[nCount] = (new Date()).getTime();
				aSpdResult[nCount] = aSpdEndTime[nCount]
						- aSpdStartTime[nCount];
			} else {
				aSpdEndTimeUser[nCount] = (new Date()).getTime();
				aSpdResultUser[nCount] = aSpdEndTimeUser[nCount]
						- aSpdStartTimeUser[nCount];
				var sIdTmp = 'locationTest';
				var oTar = $id(sIdTmp + nCount);
				var nResult = Number(aSpdResultUser[nCount]);
				/*if(nResult < 100){
					oTar.style.color = "green";
				}else if(nResult __tag_3691$20_ 100 ){
					oTar.style.color = "#ff7200";
				}else{
					oTar.style.color = "red";
				}*/
				oTar.innerHTML = '__tag_3696$21_' + nResult + '__tag_3696$61_ms';
			}
		} catch (e) {
			fNetErrDebug('ErrSpd' + nCount);
		}
	};

	//locationDot
	var fLocationDot = function(nCount) {
		var sId = 'locationDot';
		var oTar = $id(sId + nCount);
		return setInterval(function() {
			if (oTar.innerHTML == '...') {
				oTar.innerHTML = '';
			} else {
				oTar.innerHTML += '.';
			}
		}, 200);
	}

	//测速弹框
	var aLocationDot = [];
	var fSelectLoaction = function(sFunc) {
		var oDiv = $id('locationTest');
		var oExt = $id('loginExt');
		if (sFunc == 'show') {
			oDiv.style.display = 'block';
			var sIdTmp = 'locationTest';
			for ( var i = 0; i <= 2; i++) {
				$id(sIdTmp + i).innerHTML = '测速中__tag_3726$35_</span>';
				//$id('locationBest' + i).style.display = 'none';
				aLocationDot[i] = fLocationDot(i);
			}
			fSpdUserInit();
			fSpeedTestPre('bj');
			window.oSelectLoaction = setInterval(function() {
				var nBest = 4;
				aSpdResultUser[nBest] = 999;
				for ( var i = 0; i <= 2; i++) {
					clearInterval(aLocationDot[i]);
					var sTxt = $id(sIdTmp + i).innerHTML;
					if (sTxt.match('测速中')) {
						$id(sIdTmp + i).style.color = '#999';
						$id(sIdTmp + i).innerHTML = '超时';
					}
					if (aSpdResultUser[i] != -1) {
						if (aSpdResultUser[nBest] > aSpdResultUser[i]) {
							nBest = i;
						}
					}
				}
				if (nBest != 4) {
					$id('locationTest' + nBest).style.color = '#22ac38';
				}
				clearInterval(oSelectLoaction);
			}, 1000)
		} else {
			clearInterval(oSelectLoaction);
			for ( var i = 0; i <= 2; i++) {
				clearInterval(aLocationDot[i]);
			}
			oDiv.style.display = 'none';
		}
	}, fSpdUserInit = function() {
		bSpdAuto = false;
		window.aSpdResultUser = [ -1, -1, -1 ];
		window.aSpdStartTimeUser = [];
		window.aSpdEndTimeUser = [];
		window.aSpdResult = [ -3, -3, -3, 'db' ];
		var sIdTmp = 'locationTest';
		for ( var i = 0; i <= 2; i++) {
			$id(sIdTmp + i).style.color = '#848585';
		}
	}, fLocationChoose = function(sOperator) {
		clearInterval(oSelectLoaction);
		for ( var i = 0; i <= 2; i++) {
			clearInterval(aLocationDot[i]);
			$id('locationHref' + i).className = $id('locationHref' + i).className
					.replace(/\sservSelected/g, '');
		}
		$id('selectLocationTips').style.display = 'none';
		$id('selectLocationTipsDone').style.display = 'inline';
		$id('locationTest').style.display = 'none';
		var oOperators = {
			t : '电信',
			c : '联通',
			e : '教育网'
		};
		var sTmpSelect = 0;
		for (j in oOperators) {
			if (j == sOperator) {
				$id('locationHref' + sTmpSelect).className += ' servSelected';
				break;
			}
			sTmpSelect++;
		}
		$id('selectLocation').innerHTML = oOperators[sOperator];
		sLocationInfo = sOperator;
	}, fSetLocation = function(data) {
		var tmpData = '';
		var aData = data.split('&');
		for ( var i = 0; i < aData.length; i++) {
			var aParam = aData[i].split('=');
			if (aParam.length >= 2) {
				if (aParam[0] == 'net') {
					tmpData = aParam[1];
					break;
				}
			}
		}
		if (tmpData == '') {
			sLocationInfo = 'err';
		} else {
			sLocationInfo = tmpData;
		}
		//使用此服务用户阀值
		var nPct = 100;// 0 - 100
		var rnd = Math.random() * 100;
		if (rnd < nPct) {
			fNetErrDebug('rnd' + ((rnd + '').split('.'))[0]);
			fSpeedTestPre();
		} else {
			bSpdAuto = false;
		}
	};

	//net=err debug
	function fNetErrDebug(sStep) {
		try {
			if (sLocationInfo.match('err') != null) {
				var sFlow = '-' + sStep;
				aSpdResult[3] += sFlow;
			}
		} catch (e) {
		}
	}

	window.onload = function() {
		indexLogin.init();
		// fq统计
		fFQ();
		//启动定位访问
		fGetScript('http://iplocator.mail.163.com/iplocator?callback=fGetLocator');
		// 推广更新后台
		loginExtAD.init();
		// 易信二维码登录
		yixinLogin.init();
	};

	// 设置内容垂直居中
	indexLogin.vericalAlignBody();
	fEventListen(window, 'resize', fResize);
	fEventListen(window, 'resize', indexLogin.vericalAlignBody);
</script>

		<!-- 主题图工具 -->
		<script type="text/javascript"
			src="http://mimg.127.net/index/lib/scripts/config.js"></script>
		<script type="text/javascript">
var gAdManager={conditionGroup:null,childrenMaterialMap:{},allMaterials:[],init:function(){var aConditions=gAdConf.conf_c;var o={};for(var i=0;i<aConditions.length;
i++){var s=aConditions[i].s;if(s){eval("result = ("+s+")();");var sId=aConditions[i].id+"";if(sId in o){o[sId]=o[sId]&&result;}else{o[sId]=result;}}}for(var sId in o){if(o[sId]){this.conditionGroup=sId-0;
return;}}},getPositionId:function(b){if((b-0+"")==(b+"")){return b;}else{for(var a=0;a<gAdConf.conf_p.length;a++){if(gAdConf.conf_p[a].n==b){return gAdConf.conf_p[a].id;
}}}},getAds:function(c){var h=this.getPositionId(c.position);var e=c.condititonGroup||this.conditionGroup;var a=c.domain||"all";var g=[];var f=gAdConf.conf_d;
var d=c.date||new Date();for(var b=0;b<f.length;b++){if(f[b].s<=d&&f[b].e>=d&&f[b].d==a&&f[b].p==h&&f[b].c==e){g.push(f[b]);if(typeof f[b].m!="object"){f[b].m=this.getMaterial(f[b].m);
}}}if(a!="all"&&g.length==0){return this.getAds({position:h,condititonGroup:e,domain:"all"});}return g;},getAd:function(b){var d=Object.prototype.toString.call(b)==="[object Array]"?b:this.getAds(b);
if(d.length>0){var c=Math.ceil(Math.random()*10000)/100;var f=0;for(var a=0;a<d.length;a++){if(!d[a].pct){continue;}var e=d[a].pct-0;f+=e;if(c<f){return d[a];
}}return d[d.length-1];}},getMaterial:function(a){var b=a;if(typeof a=="object"){return this.getAd(a).m;}var d=gAdConf.conf_m;for(var c=0;c<d.length;c++){if(d[c].id==b){return d[c];
}}},getChildrenMaterials:function(a){if(this.childrenMaterialMap[a]){return this.childrenMaterialMap[a];}var d=[];var c=gAdConf.conf_m;for(var b=0;b<c.length;
b++){var e=c[b];if(e.parentId&&e.parentId==a){d.push(e);}}return d.length>0?(this.childrenMaterialMap[a]=d):null;},getChildMaterial:function(parent){var aChildren=this.getChildrenMaterials(parent);
if(aChildren){var sType="random";if(aChildren[0].condition){sType="condition";}if(aChildren[0].pct){sType="pct";}if(sType=="random"){return aChildren[Math.floor(Math.random()*aChildren.length)];
}var nTotalPct=0;var r=Math.ceil(Math.random()*10000)/100;for(var i=0;i<aChildren.length;i++){var oChild=aChildren[i];if(sType=="condition"&&oChild.condition){eval("result = ("+oChild.condition+")();");
if(result){return oChild;}}if(sType=="pct"&&oChild.pct){var pct=oChild.pct-0;nTotalPct+=pct;if(r<nTotalPct){return oChild;}}if(i==aChildren.length-1){return oChild;
}}}},getDefaults:function(){var b=gAdConf.conf_m;var c=[];for(var a=0;a<b.length;a++){if(!b[a].parentId&&b[a].defaultShow){c.push(b[a]);}}return c;},getAll:function(d,f){var h=this;
var b,f;if(d.materials){}else{b=this.getAds(d);if(b.length>0){oAd=this.getAd(b);f=oAd.m;}else{this.allMaterials=h.getDefaults();f=this.allMaterials[0];
}}var k=this.getChildMaterial(f.id);var c=this.getChildrenMaterials(f.id);var j=this.allMaterials;var e,a;if(j.length==0){if(b.length>0){for(var g=0;g<b.length;
g++){j.push(b[g].m);}}else{j.push(f);}}j.sort(function(l,i){return l.showOrder-i.showOrder;});if(c){c.sort(function(l,i){return l.showOrder-i.showOrder;
});}for(var g=0;g<j.length;g++){if(f.id==j[g].id){e=g;}}if(c){for(var g=0;g<c.length;g++){if(k.id==c[g].id){a=g;}}}return{materials:j,material:f,childMaterail:k,childrenMaterials:c,getNext:function(){if(e==j.length-1){e=0;
}else{e++;}var i=j[e];return h.getAll(this,i);},getPrev:function(){if(e==0){e=j.length-1;}else{e--;}var i=j[e];return h.getAll(this,i);},getNextChild:function(){if(a==c.length-1){a=0;
}else{a++;}return c[a];},getPrevChild:function(){if(a==0){a=c.length-1;}else{a--;}return c[a];}};}};
</script>

		<!-- 易信二维码登录 -->
		<script type="text/javascript"
			src="http://mimg.127.net/index/lib/scripts/yxlogin.js"></script>

		<!-- 预加载极速js -->
		<iframe src="http://mail.163.com/preload5.htm" style="display: none"
			id="frmJs5"></iframe>

		<!--ssl链接预加载-->
		<img src="https://ssl.mail.163.com/httpsEnable.gif" width="0"
			height="0" style="display: block;" alt="https preload" />
		<!-- START NetEase Devilfish 2006 -->
		<script src="http://analytics.163.com/ntes.js" type="text/javascript"></script>
		<script type="text/javascript">
_ntes_nacc = "163mail";
neteaseTracker();
</script>
		<!-- END NetEase Devilfish 2006 -->
		<!--反垃圾-->
		<a href="http://uinfo.mail.163.com/cgi-bin/hseed/two.pl"></a>
	</body>
</html>