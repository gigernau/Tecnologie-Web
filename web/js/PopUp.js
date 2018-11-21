
// Contollo campi vuoti
function check_empty1() {

	if( (document.getElementById('user1').value === "") || document.getElementById('pass1').value === "")
	{
		alert("Riempire tutti i campi!");

	} else {
		document.getElementById('form1').submit();
	}

}

// Contollo campi vuoti
function check_empty2() {

	if((document.getElementById('location2').value === ""||(document.getElementById('user2').value === "") || document.getElementById('pass2').value === ""))
	{
		alert("Riempire tutti i campi!");

	} else {
		document.getElementById('form2').submit();
		
	}

}

// Contollo campi vuoti
function check_empty3() {

	if((document.getElementById('location3').value === ""))
	{
		alert("Riempire tutti i campi!");

	} else {
		document.getElementById('form3').submit();
		
	}

}

// Contollo campi vuoti
function check_empty4() {

	if((document.getElementById('location4').value === ""))
	{
		alert("Riempire tutti i campi!");

	} else {
		document.getElementById('form4').submit();
		
	}

}

// Contollo campi vuoti
function check_emptyDate1() {

	if (document.getElementById('data1').value === ""  || document.getElementById('data2').value === "")
	{
		alert("Campo Data Vuoto!");

	} else {
		document.getElementById('form5').submit();
		
	}

}

// Contollo campi vuoti
function check_emptyDate2() {

	if (document.getElementById('data3').value === ""  || document.getElementById('data4').value === "")
	{
		alert("Campo Data Vuoto!");

	} else {
		document.getElementById('form6').submit();
		
	}

}


//Function che mostra il Popup 1
function div_show1() {
        document.getElementById('P1').style.display = "block";
        
}

//Function che mostra il Popup 2
function div_show2() {
	document.getElementById('P2').style.display = "block";
}

//Function che mostra il Popup 3
function div_show3() {
	document.getElementById('P3').style.display = "block";
}

//Function che mostra il Popup 4
function div_show4() {
	document.getElementById('P4').style.display = "block";
}

//Function che mostra il Popup 5
function div_show5() {
	document.getElementById('P5').style.display = "block";
}

//Function che mostra il Popup 6
function div_show6() {
	document.getElementById('P6').style.display = "block";
}


//Function che chiude il PopUp 1
function div_hide1(){
	document.getElementById('P1').style.display = "none";
}

//Function che chiude il PopUp 2
function div_hide2(){
	document.getElementById('P2').style.display = "none";
}

//Function che chiude il PopUp 3
function div_hide3(){
	document.getElementById('P3').style.display = "none";
}

//Function che chiude il PopUp 4
function div_hide4(){
	document.getElementById('P4').style.display = "none";
}

//Function che chiude il PopUp 5
function div_hide5(){
	document.getElementById('P5').style.display = "none";
}

//Function che chiude il PopUp 6
function div_hide6(){
	document.getElementById('P6').style.display = "none";
}

