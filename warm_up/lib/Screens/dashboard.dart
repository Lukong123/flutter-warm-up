import 'package:flutter/material.dart';
import 'package:warm_up/widget/customBottomBar.dart';
import 'package:warm_up/styles/colors.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';
// import 'package:flutter_chart_demo/data/price_point.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
// import 'package:fl_chart/fl_chart.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
      SizedBox(width: 15),

            SizedBox( 
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton( 
            backgroundColor: lightgreen,
            onPressed: () {},
            child: Icon(
              Icons.area_chart,
              size: 25,
              color: Colors.green,
            ),
          ),
        ),
      ),  
      SizedBox(width: 15),
      SizedBox( 
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton( 
            backgroundColor: lightpink,
            onPressed: () {},
            child: Icon(
              Icons.person,
              size: 25,
              color: Colors.pink,
            ),
          ),
        ),
      ),
      SizedBox(width: 15),
        
       SizedBox( 
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton( 
            backgroundColor: lightorange,
            onPressed: () {},
            child: Icon(
              Icons.note_alt,
              size: 25,
              color: Colors.orange,
            ),
          ),
        ),
      ),
      SizedBox(width: 15),

      SizedBox( 
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton( 
            backgroundColor: lightblue,
            onPressed: () {},
            child: Icon(
              Icons.note_alt,
              size: 25,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      SizedBox(width: 15),

       
            


              ]
            
          ),
          Column(
            children: [
          //      SfCartesianChart(
          //     primaryXAxis: CategoryAxis(),
          //     // Chart title
          //     title: ChartTitle(text: 'Half yearly sales analysis'),
          //     // Enable legend
          //     legend: Legend(isVisible: true),
          //     // Enable tooltip
          //     tooltipBehavior: TooltipBehavior(enable: true),
          //     series: <ChartSeries<_SalesData, String>>[
          //       LineSeries<_SalesData, String>(
          //           dataSource: data,
          //           xValueMapper: (_SalesData sales, _) => sales.year,
          //           yValueMapper: (_SalesData sales, _) => sales.sales,
          //           name: 'Sales',
          //           // Enable data label
          //           dataLabelSettings: DataLabelSettings(isVisible: true))
          //     ]),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     //Initialize the spark charts widget
          //     child: SfSparkLineChart.custom(
          //       //Enable the trackball
          //       trackball: SparkChartTrackball(
          //           activationMode: SparkChartActivationMode.tap),
          //       //Enable marker
          //       marker: SparkChartMarker(
          //           displayMode: SparkChartMarkerDisplayMode.all),
          //       //Enable data label
          //       labelDisplayMode: SparkChartLabelDisplayMode.all,
          //       xValueMapper: (int index) => data[index].year,
          //       yValueMapper: (int index) => data[index].sales,
          //       dataCount: 5,
          //     ),
          //   ),
          // )

        //    Container(
        //   padding: const EdgeInsets.all(20),
        //   width: double.infinity,
        //   child: LineChart(
        //     LineChartData(
        //       borderData: FlBorderData(show: false),
        //       lineBarsData: [
        //         // The red line
        //         LineChartBarData(
        //           spots: dummyData1,
        //           isCurved: true,
        //           barWidth: 3,
        //           color: Colors.indigo,
        //         ),
        //         // The orange line
        //         LineChartBarData(
        //           spots: dummyData2,
        //           isCurved: true,
        //           barWidth: 3,
        //           color: Colors.red,
        //         ),
        //         // The blue line
        //         LineChartBarData(
        //           spots: dummyData3,
        //           isCurved: false,
        //           barWidth: 3,
        //           color: Colors.blue,
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        BarChart(
  BarChartData(
    // look into the source code given below
  ),
  swapAnimationDuration: Duration(milliseconds: 150), // Optional
  swapAnimationCurve: Curves.linear, // Optional
)
            ]
            // The chart
          ),
          Row(
             children: [
              Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 130,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("TOTAL"),
                  Text("REVENUE"),
                  SizedBox(height: 5),
                  Text("120 000 FCFA")
                ]
              )))),
              Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 130,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("TOTAL"),
                  Text("PROFIT"),
                  SizedBox(height: 5),
                  Text("120 000 FCFA")
                ]
              ))))
             ]
            // Cards
          ),
          Column(
            // The complex Column
            children: [
              Text("Recent Orders"),
              Row(
                children: [
                  SizedBox( 
        width: 55,
        height: 55,
        child: FittedBox(
          child: FloatingActionButton( 
            backgroundColor: lightgreen,
            onPressed: () {},
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.green,
            ),
          ),
        ),
      ),  
                  Column(
                    children: [
                      Text("Perfume Order Classics"),
                      Text("Alice Bruce. Stripe. #550000. Nov 9"),
                    ],
                  ),
                  Text("33000 FCFA ")
                ],
              ),

            ],
          ),
        ],
      ),
      // bottomNavigationBar: MybotomBar(index: index, tap: tap),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
