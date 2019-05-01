$(document).ready(function(){
    var saveRank
    function getRank() {
        $.ajax({
            'url':'/search/crawlRank/',
            'type':'GET',
        }).done(function(results){
            saveRank = results
            console.log(results)
            showRank(results[0])
        })
    }

    function showRank(ranking){
        console.log(ranking)
        base = $("#rank>tbody")
        base.html("")
        $.each(ranking,function(idx,rank){
            var img = ""
            if(rank.team.includes("Lamigo")){
                img = "2222.png"
            }else if(rank.team.includes("中信兄弟")){
                img = "4444.png"
            }else if(rank.team.includes("富邦")){
                img = "333.png"
            }else {
                img = "1111.png"
            }
            
            var d = $("<td class='text-center'></td>").html("<img src='/static/images/"+img+"'>")
            var d3 = $("<td class='text-center'></td>").text(rank.w)
            var d4 = $("<td class='text-center'></td>").text(rank.l)
            var d5 = $("<td class='text-center'></td>").text(rank.t)
            var d6 = $("<td class='text-center'></td>").text(rank.PCT)
            var d7 = $("<td class='text-center'></td>").text(rank.GB)
            var row =  $("<tr></tr>").append([d,d3,d4,d5,d6,d7]);
            base.append(row)
            console.log("append")
        })
    }
    getRank()

    $(document).on('click','#all',function(e){
        e.preventDefault()
        showRank(saveRank[0])
    })

    $(document).on('click','#first',function(e){
        e.preventDefault()
        showRank(saveRank[1])
    })

    $(document).on('click','#last',function(e){
        e.preventDefault()
        showRank(saveRank[2])
    })

    var game= $("#game>tbody")
    var docFrag = $(document.createDocumentFragment());

    $.get("../game",function(datas){
        console.log(datas)
        var data = JSON.parse(datas)
        
        $.each(data,function(index,value){
            teamstr=String(value.team1)
            var cell1=$("<td class='text-center'></td>").text("2019年"+value.date)
            console.log("2019年"+value.date)
            var cell2=$("<td class='text-center'></td>").html("<img src="+value.team1+">"+" " +"VS"+" " +"<img src="+value.team2+">" )
            var cell3=$("<td class='text-center'></td>").text(value.team1game+":"+value.team2game)
            var cell4=$("<td class='text-center'></td>").html("<img src="+value.teamwinname+">")
            var row= $("<tr></tr>").append([cell1,cell2,cell3,cell4])
            docFrag.append(row)
            console.log(teamstr)
        })
        game.html(docFrag)    
    })
    
    
})