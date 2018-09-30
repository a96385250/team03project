$(document).ready(function(){
    $('a[name^="upload"]').click(function(){
        value = $(this).attr("name")
        var id = value.substr(value.indexOf("#") + 1)

        var title = $('#atitle'+id).html()
        var url = $('#aurl'+id).html()
        var date = $('#adate'+id).html()
        var team = $('#ateam'+id).html()
        var type = $('#atype'+id).html()
        var datas = {
            "id": id,
            "title": title,
            "url": url,
            "date": date,
            "team": team,
            "type": type
        }
        var csrftoken = $("[name=csrfmiddlewaretoken]").val();
        $.ajax({  
            type: "POST",  
            data: datas, 
            headers:{
                "X-CSRFToken": csrftoken
            },
            url: "/edit/supdate/",

            });
    })
})

