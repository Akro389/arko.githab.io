$("#but").on("click", ()=>{part()});

function part(){
    let block = $(".square");
    block.css({"opacity": "1", "background": "green"});
    block.css({"width":"200px","height":"120px"});
    block.animate({marginLeft: "+=87%"}, 1000)
    .animate({"opacity": "50%"}, 1000)
    .animate({backgroundColor: "red"}, 1000)
    .animate({marginLeft: "-=87%"}, 1000)
    .animate({width: block.width() * 2, height: block.height() * 2}, 1000);
}