


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
            docFrag.append($('<div></div>').attr("class", "container"))
            docFrag.append($('<div></div>').attr("class", "row"))
            $.each(results,function(idx,result){
                console.log(result.articleid)
                console.log(result.title)
                docFrag.append(createResults(result))
            })
            root.html(docFrag)
        })
    });

    function createResults(result) {
        var div = $('<div></div>')
        div.attr("class", "card col-md-12 p-3").append(div.attr("class", "row"))
        var img = $('<img />').attr("class", "w-100").attr("src",result.url)
        var h6 = $('<h6></h6>').attr("class", "card-title").text(result.title)
        var p = $('<p></p>').attr("class", "card-text text-justify").text(result.summary)
        var a = $('<a></a>').attr("class", "btn btn-primary").attr("href", result.url)

        return(div)
    }
    // <div class="card col-md-12 p-3">
//     <div class="row ">
//         <div class="col-md-4">
//             <img class="w-100" src="https://via.placeholder.com/350x350">
//         </div>
//         <div class="col-md-8">
//             <div class="card-block">
//                 <h6 class="card-title">Card Title</h6>
//                 <p class="card-text text-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
//                 <a href="https://www.google.com" class="btn btn-primary">read more...</a>
//             </div>
//         </div>
//     </div>
// </div>
    // $("#searchbar").on('keyup',function(event) {
    //     var i = event.keyCode;
    //     console.log(i)
        
    // });
  })