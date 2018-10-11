


$(document).ready(function(){

    $(document).on('click','#search',function(e) {
      query = $("#query").val().split(" ")
      var results
      $.ajax({
        'url':'/api/articles/?search=' + query.toString(),
        'type':'GET',
        }).done(function(results){
            root = $("#extrapadding").append()
            var docFrag = $(document.createDocumentFragment())
            
            shell = $('<div></div>').attr("class", "row")
            $.each(results,function(idx,result){
                console.log(result.articleid)
                console.log(result.title)
                shell.append(createResults(result))
            })
            container = $('<div></div>').attr("class", "container")
            container.append(shell)
            root.html(container)
        })
    });

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
        e.preventDefault()
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