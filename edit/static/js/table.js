$(document).ready(function(){
    var teams

    function callbackFuncWithData(datas){
        teams = datas;
    }
    
    function getTeam(){
        $.getJSON('/api2/todo/',callbackFuncWithData);
    }

    function loadSearch(){
        teams =getTeam()
        $.getJSON('/api/articles/',function(datas){
            var tb =  $('#tblList>tbody');
            var docFrag = $(document.createDocumentFragment())
            $.each(datas,function(idx,article){
                var cell1 = $('<td></td>').text(article.articleid)
                var cell2 = $('<td></td>').text(article.title).attr('contenteditable','true')
                var cell3 = $('<td></td>').text(article.url).attr('contenteditable','true')
                var cell4 = $('<td></td>').text(article.date).attr('contenteditable','true')
                var selected = $('<select></select>')
                $.each(teams,function(idx,teams){
                    option = $('<option></option>').attr("id", teams.teamid).text(teams.teamname)
                    if(teams.teamid == article.teamid){
                        option.attr("selected",true)
                    }
                    selected.append(option)
                })
                var cell5 = $('<td></td>').append(selected)
                var cell6= $('<td></td>').text(article.articletype).attr('contenteditable','true')
                var cell7 = $('<td></td>').html('<button class="btn btn-danger"><i class="far fa-trash-alt"></i></button><button class="btn btn-primary"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>')
                var row = $('<tr></tr>').append([cell1,cell2,cell3,cell4,cell5,cell6,cell7])
                docFrag.append(row)
            })
            tb.html(docFrag)
        })
    }
    loadSearch()

    $('#tblList>tbody').on('click','button:nth-child(1)',function(){
        var id = $(this).parents('tr').find('select>:selected').attr("id")
       //刪除資料
           $.ajax({
               'url':'/api/articles/' + id + '/',
               'type':'DELETE'
           }).done(function(data){
                loadSearch()
           })
   })

   $('#tblList>tbody').on('click','button:nth-child(2)',function(){
        var id = $(this).parents('tr').find('td:nth-child(1)').text()
        var title = $(this).parents('tr').find('td:nth-child(2)').text()
        var url = $(this).parents('tr').find('td:nth-child(3)').text()
        var date = $(this).parents('tr').find('td:nth-child(4)').text()
        var team = $(this).parents('tr').find('select>:selected').attr("id")
        var articletype = $(this).parents('tr').find('td:nth-child(6)').text()
        var datas = {
           "articleid": id,
           "title": title,
           "url": url,
           "date": date,
           "teamid": team,
           "articletype": articletype,
       };
         //修改資料
     $.ajax({
         'url':'/api/articles/' + id + '/',
         'type':'PUT',
         'data':datas
     })
   })

   $('#add').on('click',function(){
        var article = {
            "articleid": 0,
            "title": "",
            "url": "",
            "date": "",
            "teamid": "",
            "articletype": "",
        };
        var tb =  $('#tblList');
        var docFrag = $(document.createDocumentFragment())
        var cell1 = $('<td></td>').text(article.articleid)
        var cell2 = $('<td></td>').text(article.title).attr('contenteditable','true')
        var cell3 = $('<td></td>').text(article.url).attr('contenteditable','true')
        var cell4 = $('<td></td>').text(article.date).attr('contenteditable','true')
        var selected = $('<select></select>')
        $.each(teams,function(idx,teams){
            option = $('<option></option>').attr("id", teams.teamid).text(teams.teamname)
            if(teams.teamid == article.teamid){
                option.attr("selected",true)
            }
            selected.append(option)
        })
        var cell5 = $('<td></td>').append(selected)
        var cell6= $('<td></td>').text(article.articletype).attr('contenteditable','true')
        var cell7 = $('<td></td>').html('<button class="btn btn-danger"  disabled><i class="far fa-trash-alt"></i></button><button class="btn btn-primary" disabled><i class="fa fa-paper-plane" aria-hidden="true"></i></button><button class="btn btn-success upload"><i class="fa fa-upload" aria-hidden="true"></i></button>')
        var row = $('<tr></tr>').append([cell1,cell2,cell3,cell4,cell5,cell6,cell7])
        docFrag.append(row)
        tb.append(docFrag)
    })
    
    $(document).on('click','.upload',function(){
        var title = $(this).parents('tr').find('td:nth-child(2)').text()
        var url = $(this).parents('tr').find('td:nth-child(3)').text()
        var date = $(this).parents('tr').find('td:nth-child(4)').text()
        var team = $(this).parents('tr').find('select>:selected').attr("id")
        var articletype = $(this).parents('tr').find('td:nth-child(6)').text()
        var datas = {
            "title": title,
            "url": url,
            "date": date,
            "teamid": team,
            "articletype": articletype,
        };
        
        $.ajax({
            'url':'/api/articles/',
            'type':'POST',
            'data':datas
        }).done(function(data){
           loadSearch()
        })
        
    })

    $(document).on('click','#crawl',function(){
        $.ajax({
            'url':'/search/crawl/',
            'type':'GET',
        }).done(function(data){
           console.log("started crawling")
        })
        
    })
    
})

