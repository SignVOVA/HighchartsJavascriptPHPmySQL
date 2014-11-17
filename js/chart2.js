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

$(document).ready(function () {  

    var locations = [];
    var area = [];
    var uniqueArea = [];
    var locationsA = [];
    var locationsB = [];
    var locationsC = [];
    var locationsFA = [];
    var locationsX = [];
    locations = [];
        $.each(reportData, function(){
            area.push(this.Area);
            locations.push(this.LocactionName);
            if (this.Area == "Area A") {
                locationsA.push(this.LocactionName);
            }
            if (this.Area == "Area B") {
                locationsB.push(this.LocactionName);
            }
            if (this.Area == "Area C") {
                locationsC.push(this.LocactionName);
            }
            if (this.Area == "Area FA") {
                locationsFA.push(this.LocactionName);
            }
            if (this.Area == "Area X") {
                locationsX.push(this.LocactionName);
            }

        }); 

        uniqueArea = eliminateDuplicates(area);

    var colors = Highcharts.getOptions().colors,
        categories = uniqueArea.sort(),
        data = [{
            y: 30,
            color: colors[0],
            drilldown: {
                name: area[0],
                categories: locationsA,
                data: [10, 10, 10],
                color: colors[0]
            }
        }, {
            y: 10,
            color: colors[1],
            drilldown: {
                name: area[1],
                categories: locationsB,
                data: [10],
                color: colors[1]
            }
        }, {
            y: 20,
            color: colors[2],
            drilldown: {
                name: area[2],
                categories: locationsC,
                data: [10, 10],
                color: colors[2]
            }
        }, {
            y: 20,
            color: colors[3],
            drilldown: {
                name: area[3],
                categories: locationsFA,
                data: [10, 10],
                color: colors[3]
            }
        }, {
            y: 20,
            color: colors[4],
            drilldown: {
                name: area[4],
                categories: locationsX,
                data: [10, 10],
                color: colors[4]
            }
        }],
        areasData = [],
        locationsData = [],
        i,
        j,
        dataLen = data.length,
        drillDataLen,
        brightness;


    // Build the data arrays
    for (i = 0; i < dataLen; i += 1) {

        // add area data
        areasData.push({
            name: categories[i],
            y: data[i].y,
            color: data[i].color
        });

        // add location data
        drillDataLen = data[i].drilldown.data.length;
        for (j = 0; j < drillDataLen; j += 1) {
            brightness = 0.2 - (j / drillDataLen) / 5;
            locationsData.push({
                name: data[i].drilldown.categories[j],
                y: data[i].drilldown.data[j],
                color: Highcharts.Color(data[i].color).brighten(brightness).get()
            });
        }
    }

    // Create the chart
    $('#container2').highcharts({
        chart: {
            type: 'pie'
        },
        title: {
            text: 'Total Percentage of Areas and Locations'
        },
        yAxis: {
            title: {
                text: 'Total percent of places'
            }
        },
        plotOptions: {
            pie: {
                shadow: false,
                center: ['50%', '50%']
            }
        },
        tooltip: {
            valueSuffix: '%'
        },
        series: [{
            name: 'Areas',
            data: areasData,
            size: '60%',
            dataLabels: {
                formatter: function () {
                    return this.y > 5 ? this.point.name : null;
                },
                color: 'white',
                distance: -30
            }
        }, {
            name: 'Locations',
            data: locationsData,
            size: '80%',
            innerSize: '60%',
            dataLabels: {
                formatter: function () {
                    // display only if larger than 1
                    return this.y > 1 ? '<b>' + this.point.name + ':</b> ' + this.y + '%'  : null;
                }
            }
        }]
    });

});