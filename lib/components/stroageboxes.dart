import 'package:admin_dashboard/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants.dart';
class Stroage extends StatefulWidget {
  final String title;
  final String svgImagePath;
  final Color color;
  final double width;
  final int gb;
  final int files;

  Stroage({Key? key,
    required this.width,
    required this.title,
    required this.files,
    required this.color,
    required this.gb,
    required this.svgImagePath,

  }) : super(key: key);

  @override
  State<Stroage> createState() => _StroageState();
}

class _StroageState extends State<Stroage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      width: Responsive.isMobile(context)?Get.width/2-50:Responsive.isTablet(context)?Get.width/7:Get.width/8,
      height: 130,
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(widget.svgImagePath,
              height: 20,
            ),
            SizedBox(height: 6,),
            Text(widget.title),
            SizedBox(height: 6,),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 5,
                  decoration: BoxDecoration(
                      color: widget.color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                LayoutBuilder(
                    builder:(context,contrain)=>Container(
                      width: contrain.maxWidth*widget.width,
                      height: 5,
                      decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(8)
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${widget.files} files",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                Text(widget.gb.toString()),

              ],
            )
          ],
        ),
      ),
    );
  }
}
