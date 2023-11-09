import 'package:flutter/material.dart';
import 'package:warm_up/widget/customBottomBar.dart';
import 'package:warm_up/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
// import 'package:flutter_chart_demo/data/price_point.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
// import 'package:fl_chart/fl_chart.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
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
    SfCartesianChart(
       primaryXAxis: CategoryAxis(),

            series: <LineSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                // Bind data source
                dataSource:  <SalesData>[
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales
    ),
            ]
            // The chart
          ),
          Row(
             children: [
              SizedBox(width: 10),

              Card(
          elevation: 50,
          shadowColor: Colors.black,
          // color: Colors.greenAccent[100],
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
              SizedBox(width: 60),
              Card(
          elevation: 50,
          shadowColor: Colors.black,
          // color: Colors.greenAccent[100],
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
              SizedBox(height: 60),
              Text("Recent Orders"),
              Row(
                children: [
                  SizedBox(width: 5),
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
   ] ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
