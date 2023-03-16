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
  Widget listTile(
      {required String title,
      required IconData iconData,
      required Function onTap}) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: () {},
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
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  IconWidget(
                    icon: Icons.home,
                    title: 'HOME',
                    name: 'HOME',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.notifications,
                    title: 'NOTIFICATIONS',
                    name: 'NOTIFICACIONES',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.person,
                    title: 'PROFILE',
                    name: 'PERFIL',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.favorite_border,
                    title: 'FAV',
                    name: 'FAVORITOS',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.star,
                    title: 'BEST',
                    name: 'RECOMENDACIONES',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.add_home,
                    title: 'ADD_HOME',
                    name: 'AÑADIR CASA',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.accessibility_new_sharp,
                    title: 'SEARCH ROOMIE',
                    name: 'BUSCAR ROOMIE',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.feed_rounded,
                    title: 'RAISE A COMPLAINT',
                    name: 'QUEJAS',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  IconWidget(
                    icon: Icons.forum_outlined,
                    title: 'FAQs',
                    name: 'PREGUNTAS FRECUENTES',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  ),
                  listTile(
                    title: "title",
                    iconData: Icons.abc_outlined,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(),
                      ));
                    },
                  )
                ],
              ),
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
