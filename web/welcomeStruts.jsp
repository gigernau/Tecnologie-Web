<%@page contentType="text/html" language="java"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home Page</title>
        
        <!-- importo file css e js -->
	<link rel="stylesheet" href="css/StyleHome.css" type="text/css" />
	<link rel="stylesheet" href="css/PopUp.css" type="text/css" />
        <script src = "js/PopUp.js" type="text/javascript"></script>
         <html:base/>
    </head>
    <body id="body" style="overflow:hidden">
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent> 
       
        <!-- Form1 -->
        <div class="rettangolo">
		<h1 style="color: #FFFFFF; font-size: 50px; font-weight: bold" align="center">Home</h1>
	        &nbsp;&nbsp;&nbsp;
                <button class="button2" onclick="div_show1()" ><span>Log In</span></button> 		
                <button onclick="div_show2()" class="button2"><span>Registrati</span></button>
                <br><br>
                <center> 
                    <h1 style="color:white">oppure</h1><br><br>
                    <a href="javascript:%20div_show3()" class="button2" name="Now" id="popup2"><span>Accedi Subito</span></a>
                </center>
        </div>   
        
         <!-- Rettango di introduzione al sito -->
	<div class="rettangolo2">
            <h1 style="color:#e6e6e6; font-size:10px; font-weight: bold" align="center"> &nbsp; AtomByte Corporation&nbsp;&nbsp;&nbsp;&nbsp;<br>
                <img src="img/atom.jpg" width="160" height="90" style="right:40px" alt="A"> </h1>
		<h1 style="color:#e6e6e6; font-size:45px; font-weight: bold" align="center"> 
		Statistiche Inquinamento </h1>
		<h1 style="color:white; font-size:27px" align="center">
		Questo è un sistema per il controllo di inquinanti atmosferici, le cui misurazioni sono generate ad intervalli regolari di 6 ore da sensori disposti sul territorio.
		Sono a vostra disposizone medie temporali per specifiche località di vostro interesse, o medie su territori  più ampi.
	    	I nostri sensori sono distribuiti sull'intero territorio nazionale, disposti su tutte le province italiane.
		</h1>
                <br>
		<h1 style="color:black; font-size:10px">&nbsp;&nbsp;&nbsp;&nbsp;&copy;Copyright della AtomByte Corporation di Gianluca De Lucia e Andrea Capone </h1>
                <img src="img/FII-1.jpg" width="30" height="30" style="right:130px;top:525px; position:absolute" alt="A">
	 </div>

        
        
        
        <!-- PopUp LOGIn -->
        <div id="P1" >
		<!-- Popup Div Starts Here -->
            <div id="popupContact1">
			<!-- Contact Us Form -->
			<form action="Controller" id="form1" method="post" name="form1">
				<img id="close1" src="img/cross.png" onclick ="div_hide1()" alt="C">
				<h2>Credenziali:</h2>
				<br><br>
				<img src="img/map.png" width="300" height="90" alt="Map"><br><br>
                                <input id="user1" name="user1" placeholder="Username"><br><br>
                                <input id="pass1" name="pass1" placeholder="Password" type="password">
				<br><br><br>
				<a href="javascript:%20check_empty1()" id="submit1">Ok</a>
			</form>
            </div>
		<!-- Popup Div Ends Here -->
        </div>	
        
        <!-- PopUp Registrazione -->
	<div id="P2" >
		<!-- Popup Div Starts Here -->
		<div id="popupContact2">
			<!-- Contact Us Form -->
			<form action="Controller" id="form2" method="post" name="form2">
				<img id="close2" src="img/cross.png" onclick ="div_hide2()" alt="C">
				<h2>Registrazione:</h2>
				<br><br>
                                <img src="img/map.png" width="300" height="90" alt="Map"> <br><br>
                                <input id="user2" name="user2" placeholder="Username"><br><br>
                                <input id="pass2" name="pass2" placeholder="Password" type="password"><br><br>
				<input id="location2" name="location2" placeholder="Location">
				<br><br><br>
				<a href="javascript:%20check_empty2()" id="submit2">Ok</a>
			</form>
		</div>
		<!-- Popup Div Ends Here -->
            </div>	
        
	<!-- PopUp Accesso veloce -->
	<div id="P3" >
		<!-- Popup Div Starts Here -->
		<div id="popupContact3">
			<!-- Contact Us Form -->
			<form action="Controller" id="form3" method="post" name="form3">
				<img id="close3" src="img/cross.png" onclick ="div_hide3()" alt="C">
				<h2>Scegliere una location:</h2>
				<br><br>
                                <img src="img/map.png" width="300" height="90" alt="Map"> <br><br>
				<input id="location3" name="location3" placeholder="Location">
				<br><br><br>
				<a href="javascript:%20check_empty3()" id="submit3">Ok</a>
			</form>
		</div>
		<!-- Popup Div Ends Here -->
            </div>	
        
    </body>
</html:html>
