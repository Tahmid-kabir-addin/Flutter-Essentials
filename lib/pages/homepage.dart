import 'dart:convert';
import "dart:developer" as dev;
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
    fetchData();
  }

  void fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    // dev.log(data.toString(),name: 'tahmid');
    setState(() {});
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
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, LoginPage.routeName);
            Constants.prefs.setBool('loggedIn', false);
            }, icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: data != null
          ? GridView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ))
          : const Center(child: CircularProgressIndicator()),
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
