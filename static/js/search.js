


$(document).ready(function(){
    $(document).on('click','#search',function(e) {
        e.preventDefault()
      query = $("#query").val().split(" ")
      var results
      $.ajax({
        'url':'/api/player/?search=' + query.toString(),
        'type':'GET',
        }).done(function(results){
            console.log(results)
            if(results){
                root = $("#extrapadding").append()
                var docFrag = $(document.createDocumentFragment())
                
                shell = $('<div><h3>球員:</h3></div>').attr("class", "row")
                $.each(results,function(idx,result){
                    console.log(result.playername)
                    shell.append(createPlayer(result))
                })
                container = $('<div></div>').attr("class", "container result-container")
                container.append(shell)
                root.html(container)
            }
            
        })
      $.ajax({
        'url':'/api/articles/?search=' + query.toString(),
        'type':'GET',
        }).done(function(results){
            container = $(".result-container")
            var docFrag = $(document.createDocumentFragment())
            
            shell = $('<div><h3 style="padding-top: 25px;">文章:</h3></div>').attr("class", "row")
            $.each(results,function(idx,result){
                console.log(result.articleid)
                console.log(result.title)
                shell.append(createResults(result))
            })
            // container = $('<div></div>').attr("class", "container")
            // container.append(shell)
            container.append(shell)
        })
    });

    function createPlayer(value) {
        var card = $('<div></div>').attr({"class": "card col-md-12 p-3"})
        var col8 = $('<div></div>').attr("class", "col-md-8")
        var col4 = $('<div></div>').attr({"class": "col-md-4","style":"max-width:200px"})
        var row = $('<div></div>').attr({"class": "row","style":"float:center"})
        logos = ["http://cpbl-elta.cdn.hinet.net/web/images/icon_lamigo_sub.png","http://cpbl-elta.cdn.hinet.net/web/images/icon_lion_sub.png","http://cpbl-elta.cdn.hinet.net/web/images/icon_Guardians_sub.png","https://secure-dcdn.cdn.nimg.jp/comch/community-icon/128x128/co3704761.jpg?1518975329","http://cpbl-elta.cdn.hinet.net/web/images/icon_cpbl_sub.png"]
        var img = $('<img />').attr("class", "w-100").attr({"src":logos[value.teamid - 1],"style":"max-width:200px;max-height:164px;"})
        
        var head1 = $("<th class='text-center'></th>").text("球員名稱")
        var head4 = $("<th class='text-center'></th>").text("打擊率")
        var head5 = $("<th class='text-center'></th>").text("安打")
        var head6 = $("<th class='text-center'></th>").text("全壘打")
        var head7 = $("<th class='text-center'></th>").text("防禦率")
        var head8 = $("<th class='text-center'></th>").text("勝投")
        var head9 = $("<th class='text-center'></th>").text("救援點")
        var head10 = $("<th class='text-center'></th>").text("打點")
        var head11 = $("<th class='text-center'></th>").text("盜壘")
        var head12 = $("<th class='text-center'></th>").text("奪三振")
        var head13 = $("<th class='text-center'></th>").text("中繼點")
        var thead =  $("<thead></thead>").append("<tr></tr>").append([head1,head4,head5,head6,head7,head8,head9,head10,head11,head12,head13]);
        var cell1 = $("<td class='text-center'></td>").text(value.playername)
        var cell4 = $("<td class='text-center'></td>").text(value.avg)
        var cell5 = $("<td class='text-center'></td>").text(value.h)
        var cell6 = $("<td class='text-center'></td>").text(value.hr)
        var cell7 = $("<td class='text-center'></td>").text(value.era)
        var cell8 = $("<td class='text-center'></td>").text(value.w)
        var cell9 = $("<td class='text-center'></td>").text(value.sv)
        var cell10 = $("<td class='text-center'></td>").text(value.rbi)
        var cell11 = $("<td class='text-center'></td>").text(value.sb)
        var cell12 = $("<td class='text-center'></td>").text(value.so)
        var cell13 = $("<td class='text-center'></td>").text(value.hld)
        var tbody = $("<tbody></tbody>").append("<tr></tr>").append([cell1,cell4,cell5,cell6,cell7,cell8,cell9,cell10,cell11,cell12,cell13]);
        var table = $('<table class="table table-bordered"></table>').append(thead).append(tbody)
        col8.append(table)
        col4.append(img)
        row.append(col4,col8)
        card.append(row)
        return(card)
    }

    function createResults(result) {
        var card = $('<div></div>').attr("class", "card col-md-12 p-3")
        var col8 = $('<div></div>').attr("class", "col-md-8")
        var col4 = $('<div></div>').attr("class", "col-md-4")
        var row = $('<div></div>').attr("class", "row")
        var img = $('<img />').attr("class", "w-100").attr("src",result.imgurl)
        var title = $('<a></a>').attr("class", "card-title").attr("href", result.url).text(result.title).attr("id",result.articleid).attr("name",result.count)
        var summary = $('<p></p>').attr("class", "card-text text-justify").text(result.summary)
        var more = $('<a></a>').attr("class", "more btn btn-primary").attr("href", result.url).text("more").attr("id",result.articleid).attr("name",result.count)
        var cardDetail = $('<div></div>').attr("class", "card-block")
        cardDetail.append([title, summary, more])
        col8.append(cardDetail)
        col4.append(img)
        row.append(col4,col8)
        card.append(row)
        return(card)
    }

    $(document).on('click','.more',addCount)

    $(document).on('click','.card-title',addCount)

    function addCount(e) {

        id = $(this).attr("id")
        count = parseInt($(this).attr("name")) + 1
        $.ajax({
            'url':'/api/articles/' + id,
            'type':'GET',
        }).done(function(data){
            data.count = count
            delete(data["articleid"])
            console.log(data)
         //修改資料
            $.ajax({
                'url':'/api/articles/'+ id+"/",
                'type':'PUT',
                'data':data
            }).done(function(data){
                console.log("added 1")
            })
        })
    }
})

$( function() {
    $.getJSON("/api/articles/", function(data) {
        // console.log(data)
        query = $("#query").val()
        list = []
        $.each(data,function(idx,obj){
            index = obj.title.indexOf(query)
            suggestion = obj.title.substring(index, index + (query.length + 3));
            list.push(suggestion)
        })
        console.log(list)
        $( "#query" ).autocomplete({
            source: list,
            minLength: 2,
            messages: {
                noResults: '',
                results: function() {}
            }
            });
        });
    });