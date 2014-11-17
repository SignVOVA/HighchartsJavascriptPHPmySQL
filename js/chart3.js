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
        var tempScore;
        var score = [];
        series = [];
        $.each(reportData, function(){
            //console.log(this);

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
        

        $('#container3').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Score For Each Location'
            },
            subtitle: {
                text: 'Over the past 10 months'
            },
            xAxis: {
                categories: [1,2,3,4,5,6,7,8,9,10] // X Axis unique months from 1 to 10             
            },
            yAxis: {
                min: 0,
                max:100,
                title: {
                    text: 'Score (%)'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: series
        });

    });