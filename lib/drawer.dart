import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Tahmid Kabir"),
            accountEmail: Text("tahmidkabiraddin@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/313269540_3155884901390464_7202136195450832068_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=1b51e3&_nc_eui2=AeEhV_AnFFQc-YNcTY2UuMIWlnRB7l2hr5OWdEHuXaGvk-p7f4fZOtQQT9yOvgF4DdY6wbTOkGGvCU61qMIaUuip&_nc_ohc=rGZ_Kb4pwWgAX-m6EDS&_nc_ht=scontent.fdac31-1.fna&oh=00_AfCbLUueO8RrHgQ-puovY6FOWFciiPH99quEfAeV4zbfBA&oe=651FAEE5"),
            ),
          ),
          // const DrawerHeader(
          //   decoration: BoxDecoration(color: Colors.greenAccent),
          //   child: Text('Tahmid Kabir'),
          //
          // ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Tahmid Kabir Addin'),
            subtitle: const Text(
              'tahmidkabiraddin@gmail.com',
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Tahmid Kabir Addin'),
            subtitle: Text(
              'tahmidkabiraddin@gmail.com',
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(Icons.edit),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Tahmid Kabir Addin'),
            subtitle: Text(
              'tahmidkabiraddin@gmail.com',
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

