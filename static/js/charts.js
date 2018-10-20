$(document).ready(function(){
  $(document).on('change','#charts',function(){
    if(document.getElementById('graph')){
      console.log("inside remove")
      document.getElementById('graph').remove();
    }
    $(document).find('hr').append("<canvas id='graph' width='800' height='450'></canvas>")  

    var type = $(this).find(':selected').attr("id")
      console.log(type)
      console.log("triggered")
      $.ajax({
        'url':'/search/graph/?type='+ type,
        'type':'GET'
      }).done(function(data){
        console.log(JSON.stringify(data))
        console.log(type)
        getChart(selectedChart,data.labels, data.data, data.title, data.labelaxis)
      })
  })
  // {"labels":["2018/10/08","2018/10/07","2018/10/05","2018/10/04","2018/10/02","2018/09/30","2018/09/29","2018/09/28"],"data":[1,2,1,2,1,2,2,1],"title":"Count of Articles Per Day","axislabel":"# of articles"}
  function getChart(cType,clabels, cdata, title, labelaxis) {
    new Chart(document.getElementById("graph"), {
      type: cType,
      data: {
        labels: clabels,
        datasets: [{
          label: labelaxis,
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#F0E68C", "#FFDAB9","#EEE8AA","#808080","#C0C0C0","#BDB76B","#8B008B","#7B68EE","#32CD32","#90EE90","#48D1CC","#191970","#CD853F","#778899","#c45850","#F0E68C", "#FFDAB9","#EEE8AA","#808080","#C0C0C0","#BDB76B","#8B008B","#7B68EE","#32CD32","#90EE90","#48D1CC","#191970","#CD853F","#778899"],
          data: cdata
        }]
      },
      options: {
        title: {
          display: true,
          text: title
        }
      }
    })
  };
  var selectedChart = "pie"
  $(document).on('click','.btn-secondary',function(){
    selectedChart= $(this).attr('id')
    if(document.getElementById('graph')){
      console.log("inside remove")
      document.getElementById('graph').remove();
    }
    $(document).find('hr').append("<canvas id='graph' width='800' height='450'></canvas>")  

    var type = $("#charts").find(':selected').attr("id")
      console.log(type)
      console.log("triggered")
      $.ajax({
        'url':'/search/graph/?type='+ type,
        'type':'GET'
      }).done(function(data){
        console.log(JSON.stringify(data))
        console.log(type)
        getChart(selectedChart,data.labels, data.data, data.title, data.labelaxis)
      })
  })

})

