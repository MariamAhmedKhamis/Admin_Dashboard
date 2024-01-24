import 'package:flutter/material.dart';
import 'package:flutter_appadmin/screens/Store.dart';
import 'package:flutter_appadmin/screens/Tasks.dart';
import 'package:flutter_appadmin/screens/addscreen.dart';
import 'package:flutter_appadmin/screens/profile.dart';
import 'package:flutter_appadmin/screens/setting.dart';
import 'package:flutter_appadmin/screens/sign_in.dart';
import 'package:flutter_appadmin/screens/sign_up.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),

          DrawerListTile(
            title: "Sign In",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AdminSignInScreen()));
            },
          ),

          DrawerListTile(
            title: "Sign Up",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AdminSignUpScreen()));
            },
          ),


          DrawerListTile(
            title: "Task",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AdminTasksScreen()));
            },
          ),


          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfileScreen()));
            },
          ),

          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AdminSettingsScreen()));
            },
          ),


        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
