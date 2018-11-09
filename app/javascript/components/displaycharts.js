import Chart from 'chart.js'

function displayChart1() {
  var ctx = document.getElementById("SpotInstaBarChart");

  var tab = ctx.dataset.tab.split('-');

  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: ["Instagram", "Spotify"],
          datasets: [{
              label: '% accepted suggestions',
              data: tab,
              backgroundColor: [
                  'rgba(255, 146, 128, 0.2)',
                  'rgba(69, 49, 93, 0.2)'
              ],
              borderColor: [
                  'rgba(255, 146, 128, 0.5)',
                  'rgba(69, 49, 93, 0.5)',
              ],
              borderWidth: 1
          }]
      },
      options: {
          scales: {
              xAxes: [{
                barPercentage: 0.5
              }],
              yAxes: [{
                  ticks: {
                      beginAtZero:true
                  }
              }]
          }
      }
  });

}


function displayChart2() {
  var ctx = document.getElementById("ManuPieChart");
  var tab = ctx.dataset.tab.split('-');

  new Chart(ctx, {
      type: 'pie',
      data: {
        labels: ["Photos", "Videos", "Quotes"],
        datasets: [{
          data: tab,
          label: "% repartion of self-added memories",
          backgroundColor: ['rgba(255, 146, 128, 0.2)', 'rgba(69, 49, 93, 0.2)', 'rgba(255, 36, 0, 0.2)'],
          borderColor: ['rgba(255, 146, 128, 0.5)', 'rgba(69, 49, 93, 0.5)', 'rgba(255, 36, 0, 0.5)'],
          borderWidth: 1,
        }]
      },
      options: {}
  });
}

function displayChart3() {
  var ctx = document.getElementById("SuggePieChart");
  var tab = ctx.dataset.tab.split('-');

  new Chart(ctx, {
      type: 'pie',
      data: {
        labels: ["Spotify", "Instagram"],
        datasets: [{
          data: tab,
          label: "% repartion of self-added memories",
          backgroundColor: ['rgba(255, 146, 128, 0.2)', 'rgba(69, 49, 93, 0.2)'],
          borderColor: ['rgba(255, 146, 128, 0.5)', 'rgba(69, 49, 93, 0.5)'],
          borderWidth: 1,
        }]
      },
      options: {}
  });
}

function displayChart4() {
  var ctx = document.getElementById("ManuSuggePieChart");
  var tab = ctx.dataset.tab.split('-');

  new Chart(ctx, {
      type: 'pie',
      data: {
        labels: ["Suggestion", "Self-added"],
        datasets: [{
          data: tab,
          label: "Suggestion VS Self-added",
          backgroundColor: ['rgba(255, 146, 128, 0.2)', 'rgba(69, 49, 93, 0.2)'],
          borderColor: ['rgba(255, 146, 128, 0.5)', '#45315D'],
          borderWidth: 1,
        }]
      },
      options: {}
  });
}


function displayChart5() {
  var ctx = document.getElementById("line-chart");
  var tab = ctx.dataset.tab.split('-');

  new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['112 Days Ago','98 Days Ago','84 Days Ago','70 Days Ago','56 Days Ago','42 Days Ago','28 Days Ago','14 Days Ago','Today'],
      datasets: [{
          data: tab,
          label: "Number of added memories",
          borderColor: '#45315D',
          fill: false
        }
      ]
    },
    options: {}
  });
}

export {displayChart1}
export {displayChart2}
export {displayChart3}
export {displayChart4}
export {displayChart5}
