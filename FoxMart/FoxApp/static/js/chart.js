onload = function()
{
    var ItBox  = document.getElementById("itbox").innerText
    var Rozetka = document.getElementById("rozetka").innerText
    var Citrus = document.getElementById("citrus").innerText
    var Allo = document.getElementById("allo").innerText
    var Stylus = document.getElementById("stylus").innerText



    var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'bar',

        // The data for our dataset
        data: {
            labels: ['ItBox', 'Rozetka', 'Citrus', 'Allo', 'Stylus'],
            datasets: [{
                label: 'Price comparing',
                backgroundColor: 'rgb(77, 30, 84)',
                borderColor: 'rgb(30, 173, 20)',
                data: [ItBox, Rozetka, Citrus, Allo, Stylus]
            }]
        },
        // Configuration options go here
        options: {}
    });
}
