function eliminateDuplicates(arr) {
      var i,
          len=arr.length,
          out=[],
          obj={};

      for (i=0;i<len;i++) {
        obj[arr[i]]=0;
      }
      for (i in obj) {
        out.push(i);
      }
      return out;
    }

    function generateData(cats, names, points) {
    var ret = {},
        ps = [],
        series = [],
        len = cats.length;

    //concat to get points
    for (var i = 0; i < len; i++) {
        ps[i] = {
            x: cats[i],
            y: points[i],
            n: names[i]
        };
    }
    names = [];
    //generate series and split points
    for (i = 0; i < len; i++) {
        var p = ps[i],
            sIndex = $.inArray(p.n, names);

        if (sIndex < 0) {
            sIndex = names.push(p.n) - 1;
            series.push({
                name: p.n,
                data: []
            });
        }
        series[sIndex].data.push(p);
    }
    return series;
}

$(document).ready(function () {  


    var locations = [];
    var months = [];
    var area = [];
    var uniqueArea = [];
    var tempScore;
    var score = [];
    series = [];

    $.each(reportData, function(){
        months.push(this.Month - 1);
        locations.push(this.LocactionName);

        tempScore = (this.PointsScored * 100 / this.PointsOutOf);
            if (this.PointsScored * 100 / this.PointsOutOf >= 1) {
                tempScore = (this.PointsScored * 100 / this.PointsOutOf);
            }
            else {
                tempScore = 0;
            }
            score.push(Math.round(tempScore));
    }); 

    series = generateData(months, locations, score);

    $('#container').highcharts({
        chart: {
            type: 'line'
        },
        title: {
            text: 'Monthly Average Score'
        },
        subtitle: {
            text: 'Source: csv_db.sql'
        },
        xAxis: {
            
        },
        yAxis: {
            min: 0,
            max:100,
            title: {
                text: 'Score (%)'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: series
    });
});