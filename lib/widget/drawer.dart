import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String imageUrl =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Pramukh_Swami_Maharaj.jpg/800px-Pramukh_Swami_Maharaj.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.zero,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  // otherAccountsPictures: [ImageIcon()],
                  accountName: Text("Bhautik Ramani"),
                  accountEmail: Text("bmramani2503@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
               ListTile(
                leading: Icon(
                  Icons.person_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "About Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
               ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Email",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
