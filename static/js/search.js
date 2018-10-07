


$(document).ready(function(){

    $(document).on('click','#search',function(e) {
      query = $("#query").val().split(" ")
      var results
      $.ajax({
        'url':'/api/articles/?search=' + query.toString(),
        'type':'GET',
        }).done(function(data){
            $.each(data,function(idx,result){
                console.log(result.articleid)
                console.log(result.title)
            })
        })
    });

    // $("#searchbar").on('keyup',function(event) {
    //     var i = event.keyCode;
    //     console.log(i)
        
    // });
  })