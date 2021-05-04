let text = true;
$(".text1").on("dblclick", ()=>{
    if(text){
        $(".text1").animate({opacity: 0}, 1000);
    }
    else{
        $(".text1").animate({opacity: 1}, 1000);
    }
    text = !text;       
});
$(".text2").on("dblclick", ()=>{
    if(text){
        $(".text2").animate({opacity: 0}, 1000);
    }
    else{
        $(".text2").animate({opacity: 1}, 1000);
    }
    text = !text;       
});

$('input[type="checkbox"]').click(function(){
    if ($(this).is(':checked')){
        $('#textl2').addClass('hover');
        $('#radioButton2').addClass('hover');
    } else {
        $('#textl2').removeClass('hover');
        $('#radioButton2').removeClass('hover');
    }
});

part2();
setInterval(part2, 7120);
button();

function part2(){
    let block = $(".square");
    let div = $("#part2");
    block.css({"font-size":"16px", "opacity": "1", "margin":"0px -"+(block.width()+20)+"px 0px 0px"});
    block.css({"width":"120px","height":"120px"})
    div.css("text-align", "right");
    setTimeout(()=>{
        block.css("margin", "auto");
        div.css("text-align", "center");
    }, 1780);
    block.animate({marginRight: div.width()/2 - block.width()/2 + "px"}, 1700)
    .animate({fontSize: "45px", width: "60px", height: "60px"}, 1500)
    .animate({opacity: "0"}, 1000)
}