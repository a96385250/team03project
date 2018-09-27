$(document).ready(function(){ 
    //E-MAIL格式檢查 
    $("body").on("change", "#email", function (){
    $Emailchecking=IsEmail($("#email").val());
    if($Emailchecking==false){
    
    alert("請填寫正確的E-MAIL格式");
    
    $("#email").blur(); //離開焦點
    
    }
    
    })
    
    function IsEmail(email) { 
    
    var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    
    if(!regex.test(email)) {
    
    return false;
    
    }else{
    
    return true;
    
    }
    
    }
    
    });
