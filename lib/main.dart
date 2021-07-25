import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: home(),
    );
  }
}
class home extends StatefulWidget {

  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  bool Visibility=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column (
        children: [
          TextField(
                    decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                      labelText: 'Name',
                        hintText: 'Enter your Name',
                        icon: Icon(Icons.person)
                    ),



          ),
          TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password ',
                  hintText: 'Enter your Password',
                  icon: Icon(Icons.remove_red_eye),
                  suffixIcon:  //prefixIcon: in left
                  IconButton(
                  icon: Icon(Visibility ?Icons.visibility_off:Icons.visibility),
                  onPressed: (){

                  setState((){
                  Visibility=!Visibility;

                            });},
              )

          ),

            obscureText: Visibility,
          ),
          ElevatedButton (

              child: Text("login "),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog Title'),
                content: const Text(' Are you sure you want to sing in?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(

                    onPressed: () =>{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('your successfully login'))),

                    },
                    //Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),

                   ),


        ],
      ),

    );
  }
}

