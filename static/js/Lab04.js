
document.getElementById("idback").addEventListener("click", backf);
document.getElementById("idpauseplay").addEventListener("click", pauseplayf);
document.getElementById("idnext").addEventListener("click", nextf);
var adImgs = document.querySelectorAll("img.block,img.none");
alert(adImgs.length);
for (var i = 0; i < adImgs.length; i++){
adImgs[i].addEventListener("click", Click);
}

var adsImgs = document.querySelectorAll("img.ads,img.adsborder");
for (var i = 0; i < adsImgs.length; i++) {
    adsImgs[i].addEventListener("mouseover", mouseOver);
}

// var linker = ["http://wiki.mbalib.com/zh-tw/Lamborghini",
//     "http://wiki.mbalib.com/zh-tw/%E6%B3%95%E6%8B%89%E5%88%A9",
//     "http://wiki.mbalib.com/zh-tw/%E5%A5%A5%E8%BF%AA",
//     "http://wiki.mbalib.com/zh-tw/%E5%AE%9D%E9%A9%AC",
//     "http://wiki.mbalib.com/zh-tw/%E7%8E%9B%E8%8E%8E%E6%8B%89%E8%92%82"];

var count = 0;
var flag = true;
function show() {
    adImgs[count].className = "none";
    adsImgs[count].className = "ads";
    count++;
    if (count >= 5) count = 0;   
    adImgs[count].className = "block";
    adsImgs[count].className = "adsborder";
}

var t = window.setInterval(show, 1000);

function backf() {
    adImgs[count].className = "none";
    adsImgs[count].className = "ads";
    count--;
    if (count < 0) count = 4;
    adImgs[count].className = "block";
    adsImgs[count].className = "adsborder";

}

function pauseplayf() {
    if (flag) {
        flag = false;
        window.clearInterval(t);
        document.getElementById("idpauseplay").src = "../../static/images/play.png";
    }
    else {
        flag = true;
        t = window.setInterval(show, 1000);
        document.getElementById("idpauseplay").src = "../../static/images/pause.png";
    }
}

function nextf() {
    show();
}

function mouseOver() {
    adImgs[count].className = "none";
    adsImgs[count].className = "ads";
    count = this.id.substr(3);

    adImgs[count].className = "block";
    adsImgs[count].className = "adsborder";
}

function Click() {    
    location.href = linker[count]; 
}