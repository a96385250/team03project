$(document).ready(function(){
    function teamselect(id){
        var teamselect = $("<select></select>")
        $.getJSON("/api2/teams/",function(datas){
            $.each(datas,function(index,teamvalue){
                var teamoption = $("<option></option>").attr("id",teamvalue.teamid).text(teamvalue.teamname)
                if(id==teamvalue.teamid){
                    teamoption.attr("selected","selected")
                }
                teamselect.append(teamoption);
            })                 
        })
        return teamselect   
        
    }

    function playerlist(){
        var teamoption = $("#team");
        $.getJSON("/api2/teams/",function(datas){
            $.each(datas,function(index,value){
                option = $("<option></option>").attr("id",value.teamid).text(value.teamname);
                teamoption.append(option);
            })
        })

        $.getJSON("/api/player/?ordering=-avg",function(datas){
            var tb = $("#todolist>tbody");
            var docFrag = $(document.createDocumentFragment());
            $.each(datas,function(index,value){                
                var selects = teamselect(value.teamid)
                var options=$("<td class='text-center'></td>").append(selects)
                var cell1 = $("<td class='text-center'></td>").text(value.playername).attr({'id':value.playerid,'contenteditable':'true'});
                var cell2 = $("<td class='text-center'></td>").text(value.ab).attr('contenteditable','true');
                var cell3 = $("<td class='text-center'></td>").text(value.ip).attr('contenteditable','true');
                var cell4 = $("<td class='text-center'></td>").text(value.avg).attr('contenteditable','true');
                var cell5 = $("<td class='text-center'></td>").text(value.h).attr('contenteditable','true');
                var cell6 = $("<td class='text-center'></td>").text(value.hr).attr('contenteditable','true');
                var cell7 = $("<td class='text-center'></td>").text(value.era).attr('contenteditable','true');
                var cell8 = $("<td class='text-center'></td>").text(value.w).attr('contenteditable','true');
                var cell9 = $("<td class='text-center'></td>").text(value.sv).attr('contenteditable','true');
                var cell10 = $("<td class='text-center'></td>").text(value.rbi).attr('contenteditable','true');
                var cell11 = $("<td class='text-center'></td>").text(value.sb).attr('contenteditable','true');
                var cell12 = $("<td class='text-center'></td>").text(value.so).attr('contenteditable','true');
                var cell13 = $("<td class='text-center'></td>").text(value.hld).attr('contenteditable','true');
                var but1 = $("<td class='text-center'></td>").html('<button><i class="fas fa-edit"></i></button><button><i class="fas fa-trash-alt"></i></button>');
                var row = $("<tr></tr>").append([options,cell1,cell2,cell3,cell4,cell5,cell6,cell7,cell8,cell9,cell10,cell11,cell12,cell13,but1]);
                docFrag.append(row);
            });
            tb.html(docFrag);
            
        });
    }

    function webgettest(){
        $.getJSON("/player/catch",function(datas){
            $.each(datas,function(index,value){
                $.post("/api/player/",value,function(data){                 
                }) 
                // playerjson={
                //     "playername": value.playername,
                //     "avg": value.avg,
                //     "h": value.h,
                //     "hr": value.hr,
                //     "era": value.era,
                //     "w": value.w,
                //     "sv": value.sv,
                //     "rbi": value.rbi,
                //     "sb": value.sb,
                //     "so": value.so,
                //     "teamid": value.teamid
                // }
                // playerslist.push(playerjson)
            })
            // console.log(playerslist)        
        })
        //  console.log(playerslist)
    }
    function wbeposttest(datas){
        $.each(datas,function(index,value){
            console.log(value)
        })
    }

    // webgettest()
    playerlist()
    // // wbeposttest()
   
        $("#team").change(function(){
            teamid = $("#team >:selected").attr("id");
        })
        $("#buttonSubmit").click(function(){
            teamid=1
            var datas={
                "teamid":teamid,
                "playername":$("#playername").val(),
                "avg":$("#avg").val(),
                "h":$("#h").val(),
                "hr":$("#hr").val(),
                "era":$("#era").val(),
                "w":$("#w").val(),
                "sv":$("#sv").val(),
                "rbi":$("#rbi").val(),
                "sb":$("#sb").val(),
                "so":$("#so").val(),
            };
        $.post("/api/player/",datas,function(data){
            $("#playername").val("");
            $("#avg").val("");
            $("#h").val("");
            $("#hr").val("");
            $("#era").val("");
            $("#w").val("");
            $("#sv").val("");
            $("#rbi").val("");
            $("#sb").val("");
            $("#so").val("");
            playerlist();
        })
    })
        $("#todolist>tbody").on("click","button:nth-child(1)",function(){
            var trdatas = $(this).parents("tr");
            var teamid = trdatas.find("select>:selected").attr("id");   
            var playerid = trdatas.find("td:nth-child(2)").attr("id");
            var playername = trdatas.find("td:nth-child(2)").text();
            var avg = trdatas.find("td:nth-child(3)").text(); 
            var h = trdatas.find("td:nth-child(4)").text(); 
            var hr = trdatas.find("td:nth-child(5)").text(); 
            var era = trdatas.find("td:nth-child(6)").text(); 
            var w = trdatas.find("td:nth-child(7)").text(); 
            var sv = trdatas.find("td:nth-child(8)").text(); 
            var rbi = trdatas.find("td:nth-child(9)").text(); 
            var sb = trdatas.find("td:nth-child(10)").text(); 
            var so = trdatas.find("td:nth-child(11)").text();

            var datas = {
                "teamid":teamid,
                "playername":playername,
                "avg":avg,
                "h":h,
                "hr":hr,
                "era":era,    
                "w":w,
                "sv":sv,
                "rbi":rbi,
                "sb":sb,
                "so":so
            };
            console.log(datas)
            $.ajax({
                'url':'/api/player/' + playerid + '/',
                'type':'PUT',
                'data':datas
            }).done(function(data){
                playerlist();
            }) 
        })
        $("#todolist>tbody").on("click","button:nth-child(2)",function(){
            var playerid =$(this).parents("tr").find("td:nth-child(2)").attr("id")
            $.ajax({
                'url':'/api/player/' + playerid + '/',
                'type':'DELETE'
            }).done(function(data){
                playerlist();
            })
        })

})