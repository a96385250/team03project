$.get("/player/rankingsv",function(datas){
    data = JSON.parse(datas)
    new Chart(document.getElementById("bar-chart"),{
        type: 'bar',
        data: {
                labels: [data[0].playername, data[1].playername, data[2].playername, data[3].playername, data[4].playername],
        datasets: [
            {
                label: "SV",
                backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                data: [data[0].playerranking,data[1].playerranking,data[2].playerranking,data[3].playerranking,data[4].playerranking,3]
            }   
        ]
        },
        options: {
        legend: { display: false },
        title: {
                display: true,
                ext: 'CPBL SV'
                }
        }
    });
    new Chart(document.getElementById("pie-chart"), {
        type: 'pie',
        data: {
                labels: [data[0].playername, data[1].playername, data[2].playername, data[3].playername, data[4].playername],
                datasets: [{
                            label: "CPBL SV",
                            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                            data: [data[0].playerranking,data[1].playerranking,data[2].playerranking,data[3].playerranking,data[4].playerranking]
                }]
        },
        options: {
            title: {
            display: true,
            text: 'CPBL SV'
            }
        }
    });
    
})
