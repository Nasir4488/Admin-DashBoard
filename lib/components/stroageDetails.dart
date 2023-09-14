import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
class StorageDetails extends StatelessWidget {
  const StorageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: defultPadding),
      height: 500,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text("Stroage Details",style: TextStyle(fontSize: 18),),
          SizedBox(height: defultPadding/2,),
          //Pie Chart
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                PieChart(
                    PieChartData(
                        startDegreeOffset: -90,
                        sections: [
                          PieChartSectionData(value: 25,
                              color: Colors.blue,
                              radius: 25
                          ),
                          PieChartSectionData(value: 15,
                            color: Colors.red,
                            radius: 20,
                          ),
                          PieChartSectionData(value: 10,
                              color: Colors.orange,
                              radius: 18
                          ),
                          PieChartSectionData(value: 9,
                              color: Colors.green,
                              radius: 15
                          ),
                        ]
                    )
                ),
                Positioned.fill(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("29.1",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    Text("of 128"),
                  ],
                ))
              ],
            ),
          ),
          SizedBox(height: defultPadding/2,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defultPadding,vertical: defultPadding/2),
            padding: EdgeInsets.symmetric(horizontal: defultPadding,vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                  width: 0.5,
                )
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/Documents.svg"),
                SizedBox(width: defultPadding,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total files",style: TextStyle(fontSize: 12),),
                      Text("126",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                Text("1.3GB")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defultPadding,vertical: defultPadding/2),
            padding: EdgeInsets.symmetric(horizontal: defultPadding,vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                  width: 0.5,
                )
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/Documents.svg"),
                SizedBox(width: defultPadding,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total files",style: TextStyle(fontSize: 12),),
                      Text("126",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                Text("1.3GB")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defultPadding,vertical: defultPadding/2),
            padding: EdgeInsets.symmetric(horizontal: defultPadding,vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                  width: 0.5,
                )
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/Documents.svg"),
                SizedBox(width: defultPadding,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total files",style: TextStyle(fontSize: 12),),
                      Text("126",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                Text("1.3GB")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defultPadding,vertical: defultPadding/2),
            padding: EdgeInsets.symmetric(horizontal: defultPadding,vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                  width: 0.5,
                )
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/Documents.svg"),
                SizedBox(width: defultPadding,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total files",style: TextStyle(fontSize: 12),),
                      Text("126",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                Text("1.3GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
