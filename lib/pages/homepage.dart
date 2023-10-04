import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:teest/pages/login_page.dart';
import 'package:teest/utils/constants.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Your Name";
  TextEditingController _myTextController = TextEditingController();

  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchData();
  }

  Future fetchData() async {
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    // dev.log(data.toString(),name: 'tahmid');
    // setState(() {});
    // print(data);
    return data;
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
                Constants.prefs.setBool('loggedIn', false);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(
                child: Text("Fetch Something"),
              );

            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return const Center(child: Text("Error Occurred!"));
              } else {
                return ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]["title"]),
                    subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                    leading: Image.network(snapshot.data[index]["url"]),
                  );
                });
              }
            case ConnectionState.active:
              return const Center(
                child: Text("Nothing"),
              );
          }
        },
      ),

      drawer: MyDrawer(),
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
