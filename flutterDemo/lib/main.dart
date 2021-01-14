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
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: MyHomePage(title: 'Login'),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text('LOGIN'),
              centerTitle: true,
            ),
            body: new LoginForm()));
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({ Key key }) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        new Image.asset('images/tour3.png', width: 100.0, height: 100.0),
        Container(
          margin: EdgeInsets.all(15),
          child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Email',
            ),
          )
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Password',
            ),
          )
        ),
        FlatButton(
          onPressed: () {
            print('Login pressed');
          },
          child: Text('Login'),
          color: Colors.blue,
          textColor: Colors.white,
        ),
      ]),
    );
  }
}
