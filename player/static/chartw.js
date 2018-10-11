$.get("/player/rankingw",function(datas){
    data = JSON.parse(datas)
    console.log(data)
    new Chart(document.getElementById("bar-chart"),{
        type: 'bar',
        data: {
                labels: [data[0].playername, data[1].playername, data[2].playername, data[3].playername, data[4].playername],
        datasets: [
            {
                label: "W",
                backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                data: [data[0].playerranking,data[1].playerranking,data[2].playerranking,data[3].playerranking,data[4].playerranking,5]
            }   
        ]
        },
        options: {
        legend: { display: false },
        title: {
                display: true,
                ext: 'CPBL W'
                }
        }
    });
    new Chart(document.getElementById("pie-chart"), {
        type: 'pie',
        data: {
                labels: [data[0].playername, data[1].playername, data[2].playername, data[3].playername, data[4].playername],
                datasets: [{
                            label: "CPBL W",
                            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                            data: [data[0].playerranking,data[1].playerranking,data[2].playerranking,data[3].playerranking,data[4].playerranking]
                }]
        },
        options: {
            title: {
            display: true,
            text: 'CPBL W'
            }
        }
    });
    
})
