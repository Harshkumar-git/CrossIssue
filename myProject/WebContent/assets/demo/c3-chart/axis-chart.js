  var chart1 = c3.generate({
          bindto: '#chart1',
        data: {
          columns: [
            ['data1', 30, 200, 100, 400, 150, 250],
            ['data2', 50, 20, 10, 40, 15, 25]
          ],
          axes: {
            data1: 'y',
            data2: 'y2'
          }
        },
        axis: {
          x: {
            label: 'X Label'
          },
          y: {
            label: {
              text: 'Y Axis Label',
              position: 'outer-middle'
            }
          },
          y2: {
            show: true,
            label: {
              text: 'Y2 Axis Label',
              position: 'outer-middle'
            }
          }
        },
        tooltip: {
//          enabled: false
        },
        zoom: {
//          enabled: true
        },
        subchart: {
//          show: true
        }
      });

      setTimeout(function () {
        chart1.axis.labels({
          x: 'New X Axis Label',
          y: 'New Y Axis Label',
          y2: 'New Y2 Axis Label'
        });
      }, 1000);

      setTimeout(function () {
        chart1.load({
          columns: [
            ['data1', 100, 300, 600, 200, 400, 500]
          ]
        });
        chart1.axis.labels({y: 'New Y Axis Label Again'});
      }, 2000);
      
      
      
      
      var padding = {}, types = {}, chart, generate = function () { return c3.generate({
              bindto: '#chart2',
        data: {
          columns: [
            ['data1'],
            ['data2'],
          ],
          types: types,
          labels: true
        },
        bar: {
          width: 10
        },
        axis: {
          x: {
            padding: padding
          },
          y: {
/*
            min: -100,
            max: 1000
*/
          }
        },
        grid: {
          x: {
            show: true,
            lines: [{value: 3, text:'Label 3'}, {value: 4.5, text: 'Label 4.5'}]
          },
          y: {
            show: true
          }
        },
        regions: [
          {start:2, end:4, class:'region1'},
          {start:100, end:200, axis:'y'},
        ]
      });
      };

    function run() {

      chart = generate();

      setTimeout(function () {
        // Load only one data
        chart.flow({
          rows: [
            ['data1', 'data2', 'data3'],
            [500, 100, 200],
            [200, null, null],
            [100, 50, null] 
          ],
          duration: 1500,

          done: function () {
            // Load 2 data without data2 and remove 1 data
            chart.flow({
              columns: [
                ['data1', 200, 300],
                ['data3', 100, 100]
              ],
              length: 0,
              duration: 1500,

              done: function () {
                chart.flow({
                  columns: [
                    ['data1', 200, 300],
                    ['data2', 200, 300],
                    ['data3', 100, 100]
                  ],
                  length: 2,
                  duration: 1500,
                  done: function () {

                    chart.flow({
                      columns: [
                        ['data1', 500],
                        ['data2', 100],
                        ['data3', 200]
                      ],
                      length: 1,
                      duration: 1500
                    });
                  }

                });
              }// done

            });
          }

        });
      }, 1000);

      setTimeout(function () {
        chart.flow({
          columns: [
            ['data1', 250],
            ['data2', 350],
            ['data3', 150]
          ],
          length: 0
        });
      }, 9000);

      setTimeout(function () {
        chart.flow({
          columns: [
            ['data1', 100],
            ['data2', 50],
            ['data3', 300]
          ],
          length: 2
        });
      }, 10000);

      setTimeout(function () {
        chart.flow({
          columns: [
            ['data1', 600],
            ['data2', 400],
            ['data3', 500]
          ],
          to: 2
        });
      }, 11000);

      setTimeout(function () {
        chart.flow({
          columns: [
            ['data1', 100],
            ['data2', 200],
            ['data3', 300]
          ]
        });
      }, 12000);

      setTimeout(function () {
        chart = generate();
      }, 13000);

      setTimeout(function () {
        chart.flow({
          columns: [
            ['data1', 500, 100],
            ['data2', 100, 200],
            ['data3', 200, 300],
          ],
          duration: 1500,
          done: function () {
            chart.flow({
              columns: [
                ['data1', 200],
                ['data3', 100]
              ],
//              duration: 1000,
              length: 1
            });
          }
        });
      }, 14000);

      setTimeout(function () {
        chart.flow({
          columns: [
            ['data1', 200],
            ['data2', 300],
            ['data3', 100]
          ],
          to: 1
        });
      }, 18000);

      setTimeout(function () {
        chart.flow({
          columns: [
            ['data1', 200],
            ['data2', 300],
            ['data3', 400]
          ]
        });
      }, 19000);

    }

    run();

    // Test for no padding
    setTimeout(function () {
      padding = {left: 0, right: 0};
      run();
    }, 22000);

    // Test for other chart types
    setTimeout(function () {
      types = {
        data2: 'area',
        data3: 'bar'
      };
      run();
    }, 45000);


      var chart3 = c3.generate({
        bindto: '#chart3',
        data: {
          columns: [
            ['data1', 30, 200, 100, 400, 150, 250],
            ['data2', 50, 20, 10, 40, 15, 25]
          ]
        },
        axis: {
          x : {
            tick: {
              values: [2, 4]
            }
          }
        }
      });

      var chart4 = c3.generate({
        bindto: '#chart4',
        data: {
          x : 'date',
          xFormat : '%Y%m%d',
          columns: [
            ['date', '20130101', '20130102', '20130103', '20130104', '20130105', '20130106'],
            ['sample', 30, 200, 100, 400, 150, 250],
            ['sample2', 130, 300, 200, 450, 250, 350]
          ]
        },
        axis : {
          x : {
            type : 'timeseries',
            tick : {
              format : "%e %b %y", // https://github.com/mbostock/d3/wiki/Time-Formatting#wiki-format
              values: ['20130103', '20130104']
            }
          }
        }
      });