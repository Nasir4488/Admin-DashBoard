import 'package:admin_dashboard/Views/homeScreen.dart';
import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CustomSideBar extends StatefulWidget {
  final VoidCallback onDrawerpressed;
  CustomSideBar({Key? key,required this.onDrawerpressed}) : super(key: key);

  @override
  State<CustomSideBar> createState() => _CustomSideBarState();
}
class _CustomSideBarState extends State<CustomSideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgcolor,
      child: ListView(
        children: [
          Container( // Set a fixed height for DrawerHeader
            child: Column(
              children: [
                if(!Responsive.isDesktop(context))
                  Container(
                    alignment: Alignment.topRight,
                      margin: EdgeInsets.all(20),
                      child: IconButton(
                        icon: Icon(Icons.cancel_outlined,size: 30),
                        onPressed: (){
                          widget.onDrawerpressed();
                        },
                      )),
                DrawerHeader(

                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
                ListTile(
                  onTap: (){},
                  title: Text("DashBoard"),
                  leading: SvgPicture.asset("assets/icons/menu_dashboard.svg",color: Colors.white,),
                ),
                ListTile(
                  onTap: (){},
                  title: Text("Transactions"),
                  leading: SvgPicture.asset("assets/icons/menu_tran.svg",color: Colors.white,),
                ),
                ListTile(
                  onTap: (){
                  },
                  title: Text("Task"),
                  leading: SvgPicture.asset("assets/icons/menu_task.svg",color: Colors.white,),
                ),
                ListTile(
                  onTap: (){},
                  title: Text("Doucments"),
                  leading: SvgPicture.asset( "assets/icons/menu_doc.svg",color: Colors.white,),
                ),
                ListTile(
                  onTap: (){},
                  title: Text("Store"),
                  leading: SvgPicture.asset("assets/icons/menu_store.svg",color: Colors.white,),
                ),
                ListTile(
                  onTap: (){},
                  title: Text("Notifications"),
                  leading: SvgPicture.asset("assets/icons/menu_notification.svg",color: Colors.white,),
                ),
                ListTile(
                  onTap: (){},
                  title: Text("Notifications"),
                  leading: SvgPicture.asset("assets/icons/menu_notification.svg",color: Colors.white,),
                ),
                // Add more items to the Drawer here
              ],
            ),
          ),
        ],
      ),
    );
  }
}

