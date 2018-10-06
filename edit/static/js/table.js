$(document).ready(function(){
    $('a[name^="upload"]').click(function(){
        value = $(this).attr("name")
        var id = value.substr(value.indexOf("#") + 1)

        var title = $('#atitle'+id).html()
        var url = $('#aurl'+id).html()
        var date = $('#adate'+id).html()
        var team = $('#ateam' + id +'>:selected').text()
        var type = $('#atype'+id).html()
        var datas = {
            "id": id,
            "title": title,
            "url": url,
            "date": date,
            "team": team,
            "type": type
        }

        $.ajax({
            type: "POST",
            dataType: "json",
            url: "/edit/supdate/",
            data: datas,
        })
    })
})

