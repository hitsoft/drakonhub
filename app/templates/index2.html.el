<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<meta name="Description" content="<%=trans('MES_META_DESC')%>"/>

<link rel="shortcut icon" href="/static/favicon.ico" />
<link rel="icon" type="image/png" href="/static/favicon.png" />
<link rel="alternate" hreflang="x-default" href="https://drakonhub.com" />
<link rel="alternate" hreflang="en" href="https://drakonhub.com/en" />
<link rel="alternate" hreflang="ru" href="https://drakonhub.com/ru" />



<title><%=trans("MES_TITLE")%></title>

<!-- Copyright 2015-2017 DRAKON Labs -->

<style>
/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
/* -- end of reset.css -- */

</style>

<style>

@font-face {
	font-family: 'Ubuntu';
	src: url('/static/fonts/Ubuntu-Regular.ttf') format('truetype');
}

@font-face {
	font-family: 'Ubuntu';
	src: url('/static/fonts/Ubuntu-Italic.ttf') format('truetype');
	font-style: italic;
}

@font-face {
	font-family: 'Ubuntu';
	src: url('/static/fonts/Ubuntu-Bold.ttf') format('truetype');
	font-weight: bold;
}

@font-face {
	font-family: 'Ubuntu';
	src: url('/static/fonts/Ubuntu-BoldItalic.ttf') format('truetype');
	font-style: italic;
	font-weight: bold;
}



td {
	vertical-align: middle;
}

body, select {
	font-family: Ubuntu, Helvetica, sans-serif;
	font-size: 14pt;
}

input {
	font-family: Ubuntu, Helvetica, sans-serif;
	font-size: 14pt;
	padding:5px;
}


.redText {
	color: #BE2921;
}

strong {
	font-weight: bold;
}

p {
	margin:10px;
	line-height: 130%;
	text-align: justify;
}

h2 {
	text-align: center;
	color: #BE2921;
	font-size:140%;
	font-weight:bold;
	margin-top:10px;
}

.advantage {
	text-align: left;
	color: #BE2921;
}

ul.about-text {
	list-style-type: disc;
    margin:10px;
    padding-left:30px;	
}

ul.about-text li {
	text-align: left;
	line-height: 130%;
	color: #BE2921;
	display: list-item;
}

.bigButton {
	font-size: 12pt;
	font-weight: bold;
	display: inline-block;
	padding:20px;
	margin: 10px;
	border-radius: 30px;
	cursor: pointer;
	text-decoration:none;
	line-height: 120%;
	min-width:200px;
}



.startDrawing {
	border: 2px solid white;
	background: white;
	color: #BE2921;
}

.registerNow {
	border: 2px solid white;
	color: white;
}

.registerNow:hover {
	border: 2px solid white;
	background: white;
	color: #BE2921;
}

.startDrawing2 {
	border: 2px solid #BE2921;
	background: #BE2921;
	color: white;
}

.registerNow2 {
	border: 2px solid #BE2921;
	background: #BE2921;
	color: white;
}

.registerNow2:hover {
	border: 2px solid #BE2921;
	background: white;
	color: #BE2921;
}

.planet {
	display: inline-block;
	padding:0px 5px 8px 10px;
	cursor: pointer;
	vertical-align:middle;	
}

.lang_list {
	display:inline-block;
	margin:0px;
	padding: 0px;
}

.lang_option {
	margin:5px;
	padding: 10px;
	cursor: pointer;
	color: #BE2921;
	background: white;
}

.lang_option:hover {
	color: white;
	background: #BE2921;
}


.topMenuItem {
	color: #BE2921;
	display: inline-block;
	padding:4px 6px 4px 6px;
	margin: 10px 1px 10px 1px;
	border-radius: 18px;
	border: 1px solid white;
	cursor: pointer;
	font-size: 13pt;
	text-decoration: none;
}



.topButton {
	background: white;
	color: #BE2921;
	border: 1px solid #BE2921;
}

.selectedTopMenuItem {
	background: #BE2921;
	color: white;
	border: 1px solid #BE2921;
}

.topMenuItem:hover {
	background: #BE2921;
	color: white;
	border: 1px solid #BE2921;
}


.redHand {
    background-image: url('/static/fon-1.jpg');
    background-repeat: no-repeat;
    background-position: center; 
	background-color:#AE251D;
	text-align:center;
}

.whiteHand {
	text-align:center;
}

.redBack1 {
    background-image: url('/static/fon-1.jpg');
    background-repeat: no-repeat;
    background-position: center; 
	height: 507px;
	background-color:#AE251D;
	text-align:center;
}

.redBack2 {
    background-image: url('/static/fon-2_2.jpg');
    background-repeat: repeat-y;
    background-position: center top; 
	background-color:#AE251D;
	text-align:center;
}

.greyBack1 {
    background-image: url('/static/fon-3-1.jpg');
    background-repeat: no-repeat;
    background-position: center; 
	height: 340px;
	background-color:#F3F2EE;
	text-align:center;
}

.transBack {
    -webkit-transition: background-image 0.6s; /* Safari */
    transition: background-image 0.6s;
}


.center {
	margin:auto;
}

.whiteCell {
	padding: 20px 0px 20px 0px;
}

.overArrow {
	background:black;
	opacity:0.0;
	width:100%;
	height:100%;
}

div.overArrow:hover {
	opacity:0.2;
}

div.overArrow:active {
	opacity:0.5;
}

table.form_table td {
	padding: 5px;
}

.narrow {
	display: block;
}

.wide {
	display: none;
}

@media (min-width: 766px) {
	.narrow {
		display: none;
	}

	.wide {
		display: block;
	}
}

.user_input {
	font-family: Ubuntu, Helvetica, sans-serif;
	font-size: 14pt;
	width: 290px;
}

em {
	font-style: italic;
}

a.nav_menu, a.nav_menu:visited {
	display: block;
	font-weight: bold;
	font-size: 110%;
	color: white;
	text-decoration:none;
	margin:1px;
	margin-bottom: 0px;
	padding:0px;
	text-align:center;
	padding-top:10px;
	padding-bottom:10px;
}

a.nav_menu_active, a.nav_menu_active:visited {
	color: #7A0E0B;
	background: #F4F3EF;
}

a.nav_menu_nl {
}

a.nav_menu:hover {
	color: #7A0E0B;
	background: #F4F3EF;

}

a.nav_mob, a.nav_mob:visited {
	display: block;
	font-weight: bold;
	font-size: 110%;
	color: #BE2921;
	text-decoration:none;
	margin:5px;
	padding:0px;
	padding-left:5px;
	padding-right:5px;
	text-align:center;
	padding-top:10px;
	padding-bottom:10px;
	border: solid 2px #BE2921;
}

a.nav_mob:hover {
	color: white;
	background: #BE2921;
}

.why_hive {
	width:768px;
	padding-bottom:0px;
	column-count: 2;
	-moz-column-count: 2;
	-webkit-column-count: 2;
}

.why {
	display: inline-block;
	border: none;
	width: 380px;
	vertical-align: top;
}

.whys {
	display: block;
	border: none;
	vertical-align: top;
}

.whys2 {
	display: block;
	border: none;
	vertical-align: top;
	margin-bottom:10px;
}

.why_bullet {
	vertical-align:middle; text-align:center; width:35px;
}

.whys2 td {
	text-align: justify;
	padding:0px;
}


.why_header {
	color: #7A0E0B;
	font-weight: bold;
	font-size: 130%;
	margin:5px;
	line-height: 110%;
	text-align:left;
}

.why_body {
	color: #7A0E0B;
	color: #7A0E0B;
	margin:5px;
	line-height: 130%;
}

.why_header2 {
	color: #7A0E0B;
	font-weight: bold;
	font-size: 130%;
	margin:5px;
	line-height: 110%;
}

.why_body2 {
	color: #7A0E0B;
	color: #7A0E0B;
	margin:5px;
	line-height: 130%;
}

</style>

</head>


<body style="background:white;">

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/nb_NO/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<script>window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[1],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);

  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };

  return t;
}(document, "script", "twitter-wjs"));</script>

<div id="narrow" class="narrow">

<div style="height:45px;">
	<div class="center" style="background:white;">
		<div style="text-align:right; font-size:0px;">						
% if user_id == "" then
			<span id="topNotLoggedS" style="display:inline-block;">				
	% if licensing then
				<a href="/prices" class="topMenuItem"><%=trans("prices")%></a>
	% end
	% if signup then
				<a href="/signup" class="topMenuItem"><%=trans("sign up")%></a>
	% end
				<a href="/logon" class="topMenuItem selectedTopMenuItem" ><%=trans("login")%></a>
				<span class="planet" onclick="ctrl.languageS()"><img src="/static/earth.png" width="29" height="29" alt="language" style="vertical-align:middle;"/></span>
			</span>
% else
			<span id="topLoggedS" style="display:inline-block;">				
	% if licensing then
				<a href="/prices" class="topMenuItem"><%=trans("prices")%></a>
	% end					
				<a href="/account" class="topMenuItem" id="topUserS"><%=user_name%></a>
				<span class="topMenuItem selectedTopMenuItem" onclick="ctrl.logout()"><%=trans("logout")%></span>
				<span class="planet" onclick="ctrl.languageS()"><img src="/static/earth.png" width="29" height="29" alt="language" style="vertical-align:middle;"/></span>
			</span>
% end
		</div>
	</div>
</div>

<div class="redHand" style="background-size: cover; padding-bottom:20px;">
	
	<div style="padding-top:10px;">
		<img src="/static/drakosha2.png" width="133" height="133" alt="DrakonHub"/>
		<br />
		<img src="/static/logo-text.png" width="131" height="64" alt="<%=trans('MES_TITLE2')%>" style="margin-bottom:10px"/>
	</div>

	<h1 class="center" style="margin-top:10px;color:white; font-weight:bold; font-size:200%;"><%=trans("Online editor for DRAKON flowcharts")%></h1>

	<div class="center" style="margin-top:10px;">
% if user_id == "" then
		<span id="startS">
			<a href="/try-me" class="bigButton startDrawing"><%=trans("START DRAWING")%></a>
			<br />
			% if signup then
			<a href="/signup" class="bigButton registerNow"><%=trans("MES_10_DAYS_TRIAL")%></a>
			% end
		</span>
% else
		<a href="/ide/spaces" style="display:inline-block;" class="bigButton startDrawing"><%=trans("MY DOCUMENTS")%></a>
		<br />
		<a href="/prices" class="bigButton registerNow"><%=trans("MES_PRICES")%></a>
% end
	</div>

</div>


<div class="whiteHand" style="background:#F4F3EF;padding-bottom:10px;padding-top:10px; text-align:left;">

		<table class="whys">
			<tr>
				<td style="vertical-align:top;"><img src="/static/why-create.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_FAST_HEADER')%></div>
					<div class="why_body"><%==trans('MES_WHY_FAST_BODY')%></div>
				</td>
			</tr>
		</table>
		
		<table class="whys">
			<tr>
				<td style="vertical-align:top;"><img src="/static/why-space.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_SPACE_HEADER')%></div>
					<div class="why_body"><%==trans('MES_WHY_SPACE_BODY')%></div>
				</td>
			</tr>
		</table>		
		
		<table class="whys">
			<tr>
				<td style="vertical-align:top;"><img src="/static/why-mobile.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_MOBILE_HEADER')%></div>
					<div class="why_body"><%==trans('MES_WHY_MOBILE_BODY')%></div>
				</td>
			</tr>
		</table>
		
		<table class="whys">
			<tr>
				<td style="vertical-align:top;"><img src="/static/why-update.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_UPDATE_HEADER')%></div>
					<div class="why_body"><%==trans('MES_WHY_UPDATE_BODY')%></div>
				</td>
			</tr>
		</table>


		
		<table class="whys">
			<tr>
				<td style="vertical-align:top;"><img src="/static/why-team.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_TEAM_HEADER')%></div>
					<div class="why_body"><%==trans('MES_WHY_TEAM_BODY')%></div>
				</td>
			</tr>
		</table>	
</div>

<div id="screenS" class="transBack" style="position:relative; width:100%; height:400px; cursor:pointer; background:white; background-position: center; background-repeat: no-repeat; background-size: auto 100%;">
	<div style="display:inline-block; position:relative; top:170px; width:50px; height:50px; background-image:url('/static/str-l.png'); cursor:pointer;">
		<div id="prevS" class="overArrow"></div>
	</div>
	<div style="display:inline-block; float:right; position:relative; top:170px; width:50px; height:50px; background-image:url('/static/str-R.png'); cursor:pointer;">
		<div id="nextS" class="overArrow"></div>
	</div>
</div>




<div style="background:white; ">
	

	<a class="nav_mob" style="margin:20px;" href="/docs/examples"><%=trans("MES_EXAMPLES")%></a>
	<a class="nav_mob" href="/docs/drakon" style="margin:20px;" ><%=trans("MES_ABOUT_DRAKON")%></a>
						
	<div style="margin: 0 auto; width:305px;" ><img src="/static/white-hand.jpg" alt="<%=trans('MES_DRAWING_DIAGRAM')%>" width="305" height="200"/></div>

	<br />
	
	<div style="text-align:right; padding-right:10px; padding-bottom:5px;">
		<a class="twitter-share-button" href="https://twitter.com/intent/tweet?text=Flowcharts%20with%20aerospace%20industry%20standards">Tweet</a>
		<div class="fb-share-button" data-href="https://www.facebook.com/drakon.editor" data-layout="button" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.facebook.com%2Fdrakon.editor&amp;src=sdkpreparse">Del</a></div>
	</div>	
</div>


<div class="redBack2" style="padding:20px; color:white; padding-bottom:40px;">
	<div class="center" style="">
% if user_id == "" then
		<a href="/try-me" id="start2S" class="bigButton startDrawing"><%=trans("START DRAWING")%></a>
		<br />
% else
		<a href="/ide/spaces" style="display:inline-block;" class="bigButton startDrawing"><%=trans("MY DOCUMENTS")%></a>
% end
% if licensing then
		<br />
		<a href="/prices" class="bigButton registerNow"><%=trans("MES_PRICES")%></a>
% end	
	</div>
	<div style="margin-top:10px;"><%=trans("Feedback")%>: <a style="color:white;" href="&#x6D;&#x61;&#x69;&#x6C;&#x74;&#111;:&#x64;r&#x61;&#107;&#111;n&#46;&#101;&#x64;&#x69;t&#x6F;&#x72;&#64;&#103;m&#x61;&#105;&#x6C;&#x2E;&#x63;&#111;&#109;">&#x64;r&#x61;&#107;&#111;n&#46;&#101;&#x64;&#x69;t&#x6F;&#x72;&#64;&#103;m&#x61;&#105;&#x6C;&#x2E;&#x63;&#111;&#109;</a></div>
	<div style="font-size:110%; padding-top:10px;">Copyright 2015-2017 DRAKON Labs</div>
	

		<a href="/terms" style="color:white;"><%=trans("MES_TERMS")%></a>

</div>

<div id="languageBackS" style="display:none; position:fixed; left:0px; top:0px; width:100%; height:100%; background:black; opacity:0.0" 
	onclick="ctrl.cancelLanguage()" onwheel="HtmlUtils.preventDefaultHandling(event)">

</div>
<div id="languageS" style="display:none; position:absolute; right:5px; top:45px; background:white; margin:auto; padding:0px;box-shadow: 0px 0px 5px #000000;"
		onwheel="HtmlUtils.preventDefaultHandling(event)">
	<div class="lang_list">
		<div class="lang_option" onclick="ctrl.setLanguage('en-us')">English</div>
		<div class="lang_option" onclick="ctrl.setLanguage('ru')">Русский</div>
	</div>
</div>

</div>

<div itemscope itemtype="http://schema.org/SoftwareApplication" id="wide" class="wide">

<div id="topLine" style="height:52px;">
	<div class="center" style="width:768px; background:white; font-size:0px;">
		<div style="text-align:right;">
% if user_id == "" then
			<span id="topNotLogged" style="display:inline-block;">
	% if licensing then
				<a href="/prices" class="topMenuItem"><%=trans("prices")%></a>
	% end				
    % if signup then
				<a href="/signup" class="topMenuItem"><%=trans("sign up")%></a>
    % end
				<span class="topMenuItem selectedTopMenuItem" onclick="ctrl.showLogon()"><%=trans("login")%></span>
				<span class="planet" onclick="ctrl.language()"><img src="/static/earth.png" width="29" height="29" alt="language" style="vertical-align:middle;"/></span>
			</span>
% else
			<span id="topLogged" style="display:inline-block;">
% if admin then
				<a href="/static/adm.html" class="topMenuItem">Administration</a>
% end
	% if licensing then
				<a href="/prices" class="topMenuItem"><%=trans("prices")%></a>
	% end
				<a href="/ide/spaces" class="topMenuItem"><%=trans("diagrams")%></a>
				<a href="/account" class="topMenuItem" id="topUser"><%=user_name%></a>
				<span class="topMenuItem selectedTopMenuItem" onclick="ctrl.logout()"><%=trans("logout")%></span>
				<span class="planet" onclick="ctrl.language()"><img src="/static/earth.png" width="29" height="29" alt="language" style="vertical-align:middle;"/></span>
			</span>
% end
		</div>
	</div>
</div>



<div class="redHand" style="">
	<div style="padding-top:5px;">
		<table class="center" >
			<tr>
				<td rowspan="2"><img itemprop="image" src="/static/drakosha2.png" width="133" height="133" alt="DrakonHub"/></td>
				<td><img src="/static/logo-text2.png" width="235" height="27" alt="<%=trans('MES_TITLE2')%>" style="vertical-align: top;"/></td>
			</tr>
			<tr>				
				<td style="vertical-align:middle;"><h1 style="color:white; font-weight:bold; font-size:200%;"><%=trans("Online editor for DRAKON flowcharts")%></h1></td>
			</tr>
		</table>
	</div>
	<div class="center" style="width:768px;">
		<table style="width:100%;">
			<tr>
				<td style="width:33%; text-align:center;"><a class="nav_menu nav_menu_active" href="/"><%=trans("MES_HOME")%></a></td>
				<td style="width:33%; text-align:center;"><a class="nav_menu nav_menu_nl" href="/docs/examples"><%=trans("MES_EXAMPLES")%></a></td>
				<td style="width:34%; text-align:center;"><a class="nav_menu nav_menu_nl" href="/docs/drakon"><%=trans("MES_ABOUT_DRAKON")%></a></td>
			</tr>			
		</table>
	</div>	
</div>



<div class="whiteHand" style="background:#F4F3EF; padding-top:20px;">

	<div style="margin:auto; width:768px; padding-bottom:5px; padding-top:5px;">
		<table class="whys2">
			<tr>
				<td class="why_bullet"><img src="/static/why-create.png" width="30"/></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_FAST_HEADER')%></div>
				</td>				
			</tr>
			<tr>
				<td></td>
				<td>
					<div class="why_body"><%==trans('MES_WHY_FAST_BODY')%></div>
				</td>
			</tr>
		</table>
		
		<table class="whys2">
			<tr>
				<td class="why_bullet"><img src="/static/why-space.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_SPACE_HEADER')%></div>
				</td>
			</tr>			
			<tr>
				<td></td>
				<td>
					<div class="why_body"><%==trans('MES_WHY_SPACE_BODY')%></div>
				</td>
			</tr>
		</table>		
		
		<table class="whys2">
			<tr>
				<td class="why_bullet"><img src="/static/why-mobile.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_MOBILE_HEADER')%></div>
				</td>
			</tr>			
			<tr>
				<td></td>
				<td>
					<div class="why_body"><%==trans('MES_WHY_MOBILE_BODY')%></div>
				</td>
			</tr>
		</table>
		
		<table class="whys2">
			
			<tr>
				<td class="why_bullet"><img src="/static/why-update.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_UPDATE_HEADER')%></div>
				</td>
			</tr>			
			<tr>
				<td></td>
				<td>
					<div class="why_body"><%==trans('MES_WHY_UPDATE_BODY')%></div>
				</td>
			</tr>
		</table>


		
		<table class="whys2">
			<tr>
				<td class="why_bullet"><img src="/static/why-team.png" width="30" height="30" /></td>
				<td>
					<div class="why_header"><%=trans('MES_WHY_TEAM_HEADER')%></div>
				</td>
			</tr>			
			<tr>
				<td></td>
				<td>
					<div class="why_body"><%==trans('MES_WHY_TEAM_BODY')%></div>
				</td>
			</tr>
		</table>	
	</div>
</div>

<div class="redHand">

	<div class="center" style="padding-top:20px; padding-bottom:20px;">
% if user_id == "" then
		<span id="start">
			<a href="/try-me" class="bigButton startDrawing"><%=trans("START DRAWING")%></a>
			% if signup then
			<a href="/signup" class="bigButton registerNow"><%=trans("MES_10_DAYS_TRIAL")%></a>
			% end
		</span>
% else
		<a href="/ide/spaces" style="display:inline-block;" class="bigButton startDrawing"><%=trans("MY DOCUMENTS")%></a>
		<a href="/prices" class="bigButton registerNow"><%=trans("MES_PRICES")%></a>
% end
	</div>

</div>

<div class="whiteHand" style="background:#F4F3EF; padding-top:20px;">

		<div style="width:781px; height:655px;background-image:url('/static/tv.png'); display:inline-block;">
			<div id="screen" class="transBack" style="position:relative; left:34px; top:34px; width:715px; height:400px; cursor:pointer; background:white; background-repeat: no-repeat; background-size: 100% 100%;">
			</div>
			<div style="position:relative; top:-180px;">
				<div style="display:inline-block; width:50px; height:50px; background-image:url('/static/str-l.png'); cursor:pointer;">
					<div id="prev" class="overArrow"></div>
				</div>
				<div style="display:inline-block; width:640px;"></div>
				<div style="display:inline-block; width:50px; height:50px; background-image:url('/static/str-R.png'); cursor:pointer;">
					<div id="next" class="overArrow"></div>
				</div>
			</div>

			<div id="notchParent" style="position:relative; top:40px; display:inline-block; width:100px; height:20px; margin:auto;">
				<canvas id="notches" style="">
				</canvas>
			</div>

		</div>

		<div class="center" style="padding-top:20px; padding-bottom:20px;">
			<span id="start2">
				<a href="https://www.youtube.com/watch?v=j-M_z_7_Nkw" target="_blank" class="bigButton registerNow2" style="width:300px; text-align:center;"><%=trans("MES_SHOW_HOW")%></a>
				<a href="https://www.youtube.com/watch?v=Q0YBdX9xazw" target="_blank" class="bigButton registerNow2" style="width:300px; text-align:center;"><%=trans("MES_SHOW_COMPLEX")%></a>

			</span>
		</div>
	
		<div style="text-align:center;">
			<a class="twitter-share-button" href="https://twitter.com/intent/tweet?text=Flowcharts%20with%20aerospace%20industry%20standards">Tweet</a>
			<div class="fb-share-button" data-href="https://www.facebook.com/drakon.editor" data-layout="button" data-size="small" data-mobile-iframe="true" style="margin-bottom:10px;"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.facebook.com%2Fdrakon.editor&amp;src=sdkpreparse">Del</a></div>
		</div>	
</div>

<div class="redBack2">
	<div class="center" style="padding-top:40px; color:white; padding-bottom:40px;">
		<%=trans("Feedback")%>: <a style="color:white;" href="&#x6D;&#x61;&#x69;&#x6C;&#x74;&#111;:&#x64;r&#x61;&#107;&#111;n&#46;&#101;&#x64;&#x69;t&#x6F;&#x72;&#64;&#103;m&#x61;&#105;&#x6C;&#x2E;&#x63;&#111;&#109;">&#x64;r&#x61;&#107;&#111;n&#46;&#101;&#x64;&#x69;t&#x6F;&#x72;&#64;&#103;m&#x61;&#105;&#x6C;&#x2E;&#x63;&#111;&#109;</a>
		<div style="font-size:100%; padding-top:10px;">Copyright 2015-2017 DRAKON Labs</div>
		

			<a href="/terms" style="color:white;"><%=trans("MES_TERMS")%></a>

	</div>
</div>



<div id="logonBack" style="display:none; position:fixed; left:0px; top:0px; width:100%; height:100%; background:black; opacity:0.0" 
	onclick="ctrl.cancelLogon()" onwheel="HtmlUtils.preventDefaultHandling(event)">

</div>
<div id="logon" style="display:none; position:absolute; right:calc(50% - 384px); top:45px; background:white; margin:auto; padding:5px; padding-top:10px; padding-bottom:0px;box-shadow: 0px 0px 5px #000000;"
		onwheel="HtmlUtils.preventDefaultHandling(event)">
		<table class="form_table" style="">
			<tr>
				<td style="width:90px">
					<label for="userName"><%=trans("user name")%></label><br />
					<input id="userName" type="text" class="user_input" onkeydown="ctrl.userDown(event)"/>
				</td>
			</tr>
			<tr>
				<td><label for="password"><%=trans("password")%></label><br />
				<input id="password" type="password" class="user_input" onkeydown="ctrl.passDown(event)"/></td>
			</tr>
		</table>		
		<br />

		<div id="working_label" style=""></div>
		<div>
			<table style="width:100%" >
				<tr>
					<td style="width:50%; vertical-align:bottom;">
						<div>
							<div class="topMenuItem selectedTopMenuItem" style="margin-left:5px; font-size:14pt;" onclick="ctrl.logon()"><%=trans("login")%></div>
							<div class="topMenuItem " style="margin-left:5px; font-size:14pt;" onclick="ctrl.cancelLogon()"><%=trans("cancel")%></div>
						</div>
					</td>
					% if signup then
					<td style="width:50%; text-align:right; padding-right:10px; line-height: 200%;">
						<a href="/signup"><%=trans("sign up")%></a><br /><a href="/reset"><%=trans("forgot_pass")%></a>
					</td>
					% end
				</tr>
			</table>
		</div>

		<p id="message"></p>
</div>

<div id="languageBack" style="display:none; position:fixed; left:0px; top:0px; width:100%; height:100%; background:black; opacity:0.0" 
	onclick="ctrl.cancelLanguage()" onwheel="HtmlUtils.preventDefaultHandling(event)">

</div>
<div id="language" style="display:none; position:absolute; right:calc(50% - 384px); top:45px; background:white; margin:auto; padding:0px;box-shadow: 0px 0px 5px #000000;"
		onwheel="HtmlUtils.preventDefaultHandling(event)">
	<div class="lang_list">
		<div class="lang_option" onclick="ctrl.setLanguage('en-us')">English</div>
		<div class="lang_option" onclick="ctrl.setLanguage('ru')">Русский</div>
	</div>
</div>

<span itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
<meta itemprop="name" content="DRAKON Labs Stepan Mitkin"></span>
<meta itemprop="name" content="DrakonHub">
<meta itemprop="operatingSystem" content="web-based">
<meta itemprop="applicationCategory" content="Flowchart and diagram editor">
<meta itemprop="url" content="https://drakonhub.com/">

</div>

<div id="cookie_warning" style="display:none; position:fixed; left:0px; bottom:0px; width:100%; background:#800000; color:white;">
	<table style="width:100%">
		<tr>
			<td style="padding:5px; vertical-align:middle;">
				<div class="topMenuItem topButton" style="margin:0px;" onclick="ctrl.acceptCookies()"><%=trans("okay")%></div>
			</td>
			<td style="padding:5px 5px 5px 0px; vertical-align:middle;">
<span style="color:white;"><%==trans("explain_cookies")%></span>
			</td>
		</tr>
	</table>
</div>



<%==include("HtmlUtils")%>
<%==include("Logon")%>
<%==include("Utils")%>

<script>

var strings = <%==messages%>
function translate(text) {
	if (text in strings) {
		return strings[text]
	}
	return text
}

var logonCtrl = new Logon(window, document, translate)

function CodeBehind(window, document) {
	var gUserId = "<%=user_id%>"
	var radius = 8
	var spacing = 8
	var narrow = false
	var wide = false

var examples = {
	screens: [
		{
			url: "/try-me?example=example01",
			image: "example01.jpg",
			ex: "/ide/doc/examples/34"
		},
		{
			url: "/try-me?example=example02",
			image: "example02.jpg",
			ex: "/ide/doc/examples/35"
		},
		{
			url: "/try-me?example=example03",
			image: "example03.jpg",
			ex: "/ide/doc/examples/21"
		},
		{
			url: "/try-me?example=example04",
			image: "example04.jpg",
			ex: "/ide/doc/examples/24"
		},
		{
			url: "/try-me?example=example05",
			image: "example05.jpg",
			ex: "/ide/doc/examples/22"
		},
		{
			url: "/try-me?example=example06",
			image: "example06.jpg",
			ex: "/ide/doc/examples/26"
		},
		{
			url: "/try-me?example=example07",
			image: "example07.jpg",
			ex: "/ide/doc/examples/33"
		},
		{
			url: "/try-me?example=example08",
			image: "example08.jpg",
			ex: "/ide/doc/examples/32"
		},
		{
			url: "/try-me?example=example09",
			image: "example09.jpg",
			ex: "/ide/doc/examples/36"
		},
		{
			url: "/try-me?example=example10",
			image: "example10.jpg",
			ex: "/ide/doc/examples/31"
		},
		{
			url: "/try-me?example=example11",
			image: "example11.jpg",
			ex: "/ide/doc/examples/30"
		}
	],
	current: 0
}

function preload() {
	var noOp = function() { }
	for (var i = 0; i < examples.screens.length; i++) {
		var url = "/static/" + examples.screens[i].image
		var image = new Image()
		image.src = url
	}
}

function el(id) {
	return document.getElementById(id)
}

function nextArrow(evt) {
	var index = examples.current + 1
	if (index >= examples.screens.length) {
		index = 0
	}
	selectExample(index)
	evt.cancelBubble = true
}

function prevArrow(evt) {
	var index = examples.current - 1
	if (index < 0) {
		index = examples.screens.length - 1
	}
	selectExample(index)
	evt.cancelBubble = true
}

function fillTv() {
	var tv = el("screen")
	var tv2 = el("screenS")
	var example = examples.screens[examples.current]
	var url = "url('/static/" + example.image + "')"
	tv.style.backgroundImage = url
	tv2.style.backgroundImage = url
	updateNotches(examples.current, examples.screens.length)
}

function updateNotches(current, total) {
	var selectedColor = "#BE2921"
	var defaultColor = "white"

	var width = total * radius * 2 + (total - 1) * spacing
	var height = radius * 2
	var canvas = el("notches")
	canvas.width = width
	canvas.height = height
	canvas.style.width = width + "px"
	canvas.style.height = height + "px"
	var parent = el("notchParent")
	parent.style.height = height + "px"
	parent.style.width = width + "px"
	
	var ctx = canvas.getContext("2d");
	ctx.clearRect(0, 0, width, height);
	var x = radius
	var y = radius
	for (var i = 0; i < total; i++) {
		var color = (i == current) ? selectedColor : defaultColor
		drawCircle(ctx, x, y, radius, color)
		x += radius * 2 + spacing
	}
}

function drawCircle(ctx, centerX, centerY, radius, color) {
      ctx.beginPath()
      ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false)
      ctx.fillStyle = color
      ctx.fill()
}

function tvClick() {
	var example = examples.screens[examples.current]
	
	if (gUserId) {
		window.location.href = example.ex
	} else {	
		window.location.href = example.url
	}
}

function clientToLocal(element, evt) {
	var x = evt.clientX
	var y = evt.clientY
	var rect = element.getBoundingClientRect();
	var x1 = x - rect.left
	var y1 = y - rect.top
	return { x: x1, y: y1 }
}

function getNotch(canvas, evt) {
	var coords = clientToLocal(canvas, evt)
	var total = examples.screens.length
	var left = 0
	for (var i = 0; i < total; i++) {
		var right = left + radius * 2
		if (i != examples.current) {
			if (coords.x >= left && coords.x <= right) {
				return i
			}
		}
		left = right + spacing
	}
	return -1
}

function selectExample(index) {
	if (index >= examples.screens.length || index < 0) {
		index = 0
	}
	examples.current = index
	fillTv()
	HtmlUtils.setCookie("example", index, 1)
}

function notchClick(evt) {
	var canvas = el("notches")
	var over = getNotch(canvas, evt)
	if (over != -1) {
		selectExample(over)
	}
}

function notchMouseMove(evt) {
	var canvas = el("notches")
	var over = getNotch(canvas, evt)
	if (over == -1) {
		canvas.style.cursor = "default"
	} else {
		canvas.style.cursor = "pointer"
	}
}

function hide(element) {
	element.style.display = "none"
}

function cancelLanguage() {
	var back = el("languageBack")
	var lan = el("language")
	hide(back)
	hide(lan)
	var backs = el("languageBackS")
	var lans = el("languageS")
	hide(backs)
	hide(lans)
}


function cancelLogon() {
	var back = el("logonBack")
	var logon = el("logon")
	hide(back)
	hide(logon)
}

this.showLogon = function() {
	var back = el("logonBack")
	var logon = el("logon")
	back.style.display = "block"
	logon.style.display = "block"
	el("userName").focus()
}

this.userDown = function(evt) {
	if (evt.keyCode == 13) {
		el("password").focus()
	} else if (evt.keyCode == 27) {
		cancelLogon()
	}
}


this.passDown = function(evt) {
	if (evt.keyCode == 13) {
		logon();
	} else if (evt.keyCode == 27) {
		cancelLogon()
	}
}

function logonCompleted(userId) {
	window.location.href = "/ide/spaces"
}

function logon() {
	logonCtrl.logon("userName", "password", "working_label", logonCompleted)
}

function logout() {
	logonCtrl.logout()
}

function setLanguage(lang) {
	HtmlUtils.setCookie("language", lang)
	var noop = function() {}
	var reload = function() {
		window.location.href = "/"
	}	
	if (gUserId) {
		HtmlUtils.sendPost("/api/theme", {language: lang}, reload, noop)
	} else {
		reload()
	}
}

function language() {
	show("languageBack", "block")
	show("language", "block")
}

function languageS() {
	show("languageBackS", "block")
	show("languageS", "block")
}

function show(id, display) {
	var element = el(id)
	element.style.display = display
}

function userAcceptedCookies() {
	if (HtmlUtils.getCookie("cookies_accepted")) {
		return true
	} else {
		return false
	}
}



function initPage() {
% if user_id == "" then
		if (!userAcceptedCookies()) {
			show("cookie_warning", "block")
		}
% else		
		HtmlUtils.setCookie("language", "<%=language%>")
% end
	var search = Utils.parseSearch(window.location.search)
	if (search.ref) {
		var nothing = function() {}
		HtmlUtils.sendPost(
			"/api/set_ref",
			{ref: search.ref},
			nothing,
			nothing
		)
	}
}

function getWidth() {
    return window.innerWidth
}

function acceptCookies() {
	show("cookie_warning", "none")
	HtmlUtils.setCookie("cookies_accepted", "true", 30)
}

function safeToInt(str) {
	var integer = parseInt(str)
	if (isNaN(integer)) {
		return 0
	} else {
		return integer
	}
}

function resize() {
	if (getWidth() >= 768) {
		if (!wide) {
			wide = true
			narrow = false
			show("narrow", "none")
			show("wide", "block")
		}
	} else {
		if (!narrow) {
			wide = false
			narrow = true
			show("narrow", "block")
			show("wide", "none")
		}
	}
}

this.logon = logon
this.logout = logout
this.cancelLogon = cancelLogon
this.initPage = initPage
this.acceptCookies = acceptCookies
this.language = language
this.languageS = languageS
this.cancelLanguage = cancelLanguage
this.setLanguage = setLanguage


var tv = el("screen")
tv.onclick = tvClick
var tvS = el("screenS")
tvS.onclick = tvClick

el("prev").onclick = prevArrow
el("next").onclick = nextArrow
el("prevS").onclick = prevArrow
el("nextS").onclick = nextArrow
el("notches").onclick = notchClick
el("notches").onmousemove = notchMouseMove



var example = HtmlUtils.getCookie("example")
var exampleId
if (example == "") {
	exampleId = 0
} else {
	exampleId = safeToInt(example)
}

preload()
selectExample(exampleId)

% if url_language ~= "" then
HtmlUtils.setCookie("language", "<%=url_language%>")
% end
}

var ctrl = new CodeBehind(window, document)
window.onload = ctrl.initPage
</script>

<%==google_anal%>


</body>
</html>

