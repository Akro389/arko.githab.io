let x =3;
window.onload = ()=>{
    document.querySelector('input[type=submit]').addEventListener('click', submit);
    document.querySelector('input[type=reset]').addEventListener('click', clear);
    document.querySelector('input[type=button]').addEventListener('click', find);
}
function clear(){
    var inputs = document.querySelectorAll('input[type=text]');
	for (var i = 0;  i < inputs.length; i++) {
  		inputs[i].value = '';
	};
}
function submit(event){
	event.preventDefault();
    let check = false;
    var input = document.querySelectorAll('input[type=text]');
    for (var i = 0;  i < input.length; i++) {
  		if(input[i].value == ""){
            check = true;
            input[i].style = "border: solid 1px red";
        }
        else{
            input[i].style = "border: solid 1px black";
        }
	}
    if(check) {
        alert("Заполните все поля.");
        return;
    }
    let template = new RegExp("^3[47][0-9]{13}$|^5[1-5][0-9]{14}$");
    if(!template.test(document.data.creditcard.value))
    {
        document.data.creditcard.style = "border: solid 1px red";
        alert("Неправильный ввод номера карты.\nОсталось попыток: " + --x);
        if(!x) for(let input of document.form1) input.disabled = 'true';
        return;
    }
    template.compile("^([А-Я]{1}[а-яё]{1,23}|[A-Z]{1}[a-z]{1,23})$");
    if(!template.test(document.data.firstname.value)){
        check = true;
        document.data.firstname.style = "border: solid 1px red";
        alert("Неправильный ввод имени.");
    }
    if(!template.test(document.data.lastname.value)){
        check = true;
        document.data.lastname.style = "border: solid 1px red";
        alert("Неправильный ввод фамилии.");
    }
    template.compile("^(0[0-9]{9})$");
    if(!template.test(document.data.number.value)){
        check = true;
        document.data.number.style = "border: solid 1px red";
        alert("Телефон введен неправильно или добавлен приставка (38)");
    }
    template.compile("^[\.\-_A-Za-z0-9]+?@[\.\-A-Za-z0-9]+?\.[A-Za-z0-9]{2,6}");
    if(!template.test(document.data.mail.value)){
        check = true;
        document.data.mail.style = "border: solid 1px red";
        alert("Неправильный ввод почты.");
    }
    if(!check) alert("Форма отправлена");
}
function find(){
	let s = document.search.tearea.value;
	var rarr=document.getElementsByName("rad");
	for (var i = 0; i < rarr.length; i++) {
		if (rarr[i].checked) {
			var inputs = rarr[i].value;
			break;
		}
	}
    let res = "";
	let template = new RegExp(inputs,"g");
	for(let word of s.match(template))
	{
        res += word.trim() +" ";
    }
    document.querySelector('#tarea2').innerHTML = res;
}
