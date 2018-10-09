


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
        var title = $('<a></a>').attr("class", "card-title").attr("href", result.url).text(result.title)
        var summary = $('<p></p>').attr("class", "card-text text-justify").text(result.summary)
        var more = $('<a></a>').attr("class", "btn btn-primary").attr("href", result.url).text("more")
        var cardDetail = $('<div></div>').attr("class", "card-block")
        cardDetail.append([title, summary, more])
        col8.append(cardDetail)
        col4.append(img)
        row.append(col4,col8)
        card.append(row)
        return(card)
    }
})

$( function() {
    $.getJSON("/api/articles/", function(data) {
        // console.log(data)
        query = $("#query").val()
        list = []
        $.each(data,function(idx,obj){
            index = obj.title.indexOf(query)
            suggestion = obj.title.substring(index, index + 4);
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