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

    
})