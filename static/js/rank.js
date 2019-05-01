$(document).ready(function(){
    function rank(){
        var ranktr =$("#rank>tbody")
        var docFrag = $(document.createDocumentFragment())
        
        $.get("../cpblranking",function(datas){
            var data = JSON.parse(datas)
            $.each(data,function(index,value){
                var cell1 = $("<td class='text-center'></td>").html("<img src="+value.team+">")
                var cell2 = $("<td class='text-center'></td>").text(value.W)
                var cell3 = $("<td class='text-center'></td>").text(value.L)
                var cell4 = $("<td class='text-center'></td>").text(value.D)
                var cell5 = $("<td class='text-center'></td>").text(value.WR)
                var cell6 =$ ("<td class='text-center'></td>").text(value.GB)
                var row= $("<tr></tr>").append([cell1,cell2,cell3,cell4,cell5,cell6])
                docFrag.append(row)
            })
            ranktr.html(docFrag) 
        })

    }
    function game(){
        var game = $("#game>tbody")
        var docFrag = $(document.createDocumentFragment())

        $.get("../game",function(datas){
            console.log(datas)
            var data = JSON.parse(datas)
        
            $.each(data,function(index,value){
                teamstr=String(value.team1)
                var cell1=$("<td class='text-center'></td>").text("2019年"+value.date)
                var cell2=$("<td class='text-center'></td>").html("<img src="+value.team1+">"+" " +"VS"+" " +"<img src="+value.team2+">" )
                var cell3=$("<td class='text-center'></td>").text(value.team1game+":"+value.team2game)
                var cell4=$("<td class='text-center'></td>").html("<img src="+value.teamwinname+">")
                var row= $("<tr></tr>").append([cell1,cell2,cell3,cell4])
                docFrag.append(row)
                console.log(teamstr)
            })
            game.html(docFrag)    
        })
    } 
    game()
    rank()
})