import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/my_profile.dart';
import 'iconWidget.dart';

class DrawerSide extends StatefulWidget {
  DrawerSide({super.key});

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  Widget listTile({
    required String title,
    required IconData iconData,
    required Function onTap,
  }) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyProfile(),
          ));
        },
        leading: Icon(
          iconData,
          size: 28,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bienvenido:'),
                      Text('' + user.email!),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              iconData: Icons.home,
              title: 'INICIO',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            listTile(
              iconData: Icons.notifications,
              title: 'NOTIFICAIONES',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            listTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
              iconData: Icons.person,
              title: 'PERFIL',
            ),
            listTile(
              iconData: Icons.favorite_border,
              title: 'FAVORITOS',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            listTile(
              iconData: Icons.star,
              title: 'RECOMENDACIONES',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            listTile(
              iconData: Icons.add_home,
              title: 'AGREGAR CASA',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            listTile(
              iconData: Icons.accessibility,
              title: 'BUSCAR ROOMIE',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            listTile(
              iconData: Icons.feed_rounded,
              title: 'QUEJAS',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            listTile(
              iconData: Icons.forum_outlined,
              title: 'FAQs',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('Telefono:'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('2221405546'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('Email:'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('harris2-95@hotmail.com'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
