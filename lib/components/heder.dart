import 'package:admin_dashboard/responsive.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class Header extends StatefulWidget {
  final VoidCallback onMenuButtonPressed; // Callback to open the sidebar
  const Header({Key? key, required this.onMenuButtonPressed}) : super(key: key);
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  @override
  Widget build(BuildContext context) {
   var height=MediaQuery.of(context).size.height;
   var width=MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defultPadding),
      height: height/10,
      child: Row(
        children: [
          if(!Responsive.isDesktop(context))
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print("Menu button pressed."); // Add this line for debugging
                  widget.onMenuButtonPressed();
                },
              ),
          SizedBox(width: defultPadding/2,),
          Text("DashBoard"),
          if(!Responsive.isMobile(context))
            Spacer(flex: Responsive.isDesktop(context)?2:1),
          //Header SearchBar
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  fillColor: secondaryColor,
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                  labelText: "Search",
                  suffixIcon: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.search))
              ),
            ),
          ),
          SizedBox(width: 8,),
          // Profile
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            height: height/10,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/profile_pic.png"),height: 38,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Angellna Joli")),
                Icon(Icons.arrow_downward)
              ],
            ),
          )
        ],
      ),

    );
  }
}
