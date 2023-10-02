import 'package:flutter/material.dart';

void main() {
  //WidgetsApp //MaterialApp // CupertinoApp

  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData().copyWith(
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.blue),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Your Name";
  TextEditingController _myTextController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'My Apps',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
                color: Colors.grey[200],
                child: Column(children: [
                  Image.asset(
                    'assets/coding.jpg',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: TextField(
                      controller: _myTextController,
                      decoration: InputDecoration(
                          hintText: "Enter Name",
                          labelText: "Name",
                          border: OutlineInputBorder()),
                    ),
                  )
                ])),
          ),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _myTextController.text;
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.send, color: Colors.white),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
