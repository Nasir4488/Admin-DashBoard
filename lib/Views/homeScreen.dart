import 'package:admin_dashboard/models/recentFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/heder.dart';
import '../components/sideBar.dart';
import '../components/stroageDetails.dart';
import '../components/stroageboxes.dart';
import '../responsive.dart';
import 'package:admin_dashboard/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrawerOpen = false;
  // Function to toggle the drawer
  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 1,
                    child: CustomSideBar(
                      onDrawerpressed: toggleDrawer,
                    ),
                  ),
                SizedBox(width: defultPadding,),
                Expanded(
                  flex: 5,
                  child: ListView(
                    children: [
                      Header(onMenuButtonPressed: toggleDrawer),
                      SizedBox(height: defultPadding),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //middle section
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                if(!Responsive.isMobile(context))
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stroage(color: Colors.yellow,width: 0.4,files: 1245,gb: 128,svgImagePath: "assets/icons/Documents.svg",title: "Documents",),
                                      Stroage(color: Colors.green,width: 0.5,files: 1245,gb: 128,svgImagePath: "assets/icons/google_drive.svg",title: "Documents",),
                                      Stroage(color: Colors.blueAccent,width: 0.3,files: 1245,gb: 128,svgImagePath: "assets/icons/folder.svg",title: "Documents",),
                                      Stroage(color: Colors.orange,width: 1,files: 1245,gb: 128,svgImagePath: "assets/icons/media.svg",title: "Documents",),
                                    ],
                                  ),
                                if(Responsive.isMobile(context))
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stroage(color: Colors.blueAccent,width: 0.3,files: 1245,gb: 128,svgImagePath: "assets/icons/folder.svg",title: "Documents",),
                                      Stroage(color: Colors.orange,width: 1,files: 1245,gb: 128,svgImagePath: "assets/icons/media.svg",title: "Documents",),
                                    ],
                                  ),
                                SizedBox(height: defultPadding/2,),
                                if(Responsive.isMobile(context))
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stroage(color: Colors.yellow,width: 0.4,files: 1245,gb: 128,svgImagePath: "assets/icons/Documents.svg",title: "Documents",),
                                      Stroage(color: Colors.green,width: 0.5,files: 1245,gb: 128,svgImagePath: "assets/icons/google_drive.svg",title: "Documents",),
                                    ],
                                  ),
                                SizedBox(height: defultPadding/2,),
                                Container(
                                  margin: EdgeInsets.all(defultPadding/2),
                                  padding: EdgeInsets.all(defultPadding/2),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: secondaryColor,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Recent Files",style: TextStyle(fontSize: 18),),
                                      SizedBox(
                                        width: double.infinity,
                                        child: DataTable(
                                          columns: [
                                            DataColumn(
                                              label: Text("File Name",style: TextStyle(fontSize: 16),),
                                            ),
                                            DataColumn(
                                              label: Text("Data",style: TextStyle(fontSize: 16),),
                                            ),
                                            DataColumn(
                                              label: Text("Size",style: TextStyle(fontSize: 16),),
                                            ),
                                          ],
                                          rows: [
                                           for(var recentFile in demoRecentFiles)
                                             DataRow(
                                               cells: [
                                                 DataCell(
                                                   SvgPicture.asset(recentFile.icon)
                                                 ),
                                                 DataCell(
                                                   Text(recentFile.title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
                                                 ),
                                                 DataCell(
                                                   Text(recentFile.size,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
                                                 ),
                                               ],
                                             ),
                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: defultPadding),

                          //All storage section
                          if (!Responsive.isMobile(context))
                            Expanded(
                              flex: 2,
                              child: StorageDetails(),
                            ),
                        ],
                      ),
                      if (Responsive.isMobile(context))
                        StorageDetails(),
                    ],
                  ),
                ),
              ],
            ),
            if (isDrawerOpen && !Responsive.isDesktop(context))
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDrawerOpen = false;
                  });
                },
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            if (isDrawerOpen && !Responsive.isDesktop(context))
              CustomSideBar(
                onDrawerpressed: toggleDrawer,
              ),
          ],
        ),
      ),
    );
  }
}
