$(document).ready(function(){
    var tb = $("#avg>tbody")
    var tbh = $("#h>tbody")
    var tbhr = $("#hr>tbody")
    var tbera = $("#era>tbody")
    var tbw = $("#w>tbody")
    var tbsv = $("#sv>tbody")
    var tbrbi = $("#rbi>tbody")
    var tbrsb = $("#sb>tbody")
    var tbrso = $("#so>tbody")
    var tbhld = $("#hld>tbody")
    var docFrag = $(document.createDocumentFragment());

    $.get("/player/rankingavg",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tb.html(docFrag)
    })
    
    $.get("/player/rankingh",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbh.html(docFrag)
    })

    $.get("/player/rankinghr",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbhr.html(docFrag)
    })

    $.get("/player/rankingera",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbera.html(docFrag)
    })

    $.get("/player/rankingw",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbw.html(docFrag)
    })

    $.get("/player/rankingsv",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbsv.html(docFrag)
    })

    $.get("/player/rankingrbi",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbrbi.html(docFrag)
    })

     $.get("/player/rankingsb",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbrsb.html(docFrag)
    })

    $.get("/player/rankingso",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbrso.html(docFrag)
    })

    $.get("/player/rankinghld",function(datas){
        data = JSON.parse(datas)
        $.each(data,function(index,value){
            var number = $("<td class='text-center'></td>").text(index+1)
            var teaname = $("<td class='text-center'></td>").text(value.playerteamid)
            var playername = $("<td class='text-center'></td>").text(value.playername)
            var playerranking = $("<td class='text-center'></td>").text(value.playerranking) 
            var row = $("<tr></tr>").append([number,teaname,playername,playerranking])
            docFrag.append(row)
        })
        tbhld.html(docFrag)
    })

})