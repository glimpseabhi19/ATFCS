$(function() {

    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2014 Q1',
            Arrival: '4',
           // Departure: 19,
            EnRoute: '2'
        }, {
            period: '2015 Q2',
            Arrival: '3',
           // Departure: 3
            EnRoute: '5'
        }, {
            period: '2015 Q3',
            Arrival: '6',
           // Departure: 19,
            EnRoute: '3'
        }, {
            period: '2015 Q4',
            Arrival: '5',
           // Departure: 4,
            EnRoute: '4'
        }, {
            period: '2015 Q1',
            Arrival: '4',
          //  Departure: 3,
            EnRoute: '5'
        }, {
           period: '2015 Q2',
            Arrival: '8',
         //   Departure: 5,
            EnRoute: '5'
        }, {
            period: '2015 Q3',
            Arrival: '10',
           // Departure: 4,
            EnRoute: '7'
        }, {
            period: '2015 Q4',
            Arrival: '8',
            //Departure: 5,
            EnRoute: '4'
        }],
        xkey: 'period',
        ykeys: ['Arrival', 'EnRoute'],
        labels: ['Arrival', 'EnRoute'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Download Sales",
            value: 12
        }, {
            label: "In-Store Sales",
            value: 30
        }, {
            label: "Mail-Order Sales",
            value: 20
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 50,
            b: 40
        }, {
            y: '2013',
            a: 75,
            b: 65
        }, {
            y: '2014',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });

});
