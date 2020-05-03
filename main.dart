import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:easyeventflutter/services/auth_services.dart';
import 'package:easyeventflutter/views/first_view.dart';
import 'package:easyeventflutter/views/sign_up_view.dart';
import 'package:easyeventflutter/widgets/provider_widget.dart';
import 'package:easyeventflutter/admin_home_view.dart';


void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Provider(
      auth: AuthService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.teal,

        ),
        home: HomeController(),
        routes: <String, WidgetBuilder>{
          '/signUp': (BuildContext context) => SignUpView(authFormType: AuthFormType.signUp),
          '/signIn': (BuildContext context) => SignUpView(authFormType: AuthFormType.signIn),
          '/home': (BuildContext context) => HomeController(),
        },
      ),
    );
  }
}

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of(context).auth;
    return StreamBuilder(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if(snapshot.connectionState == ConnectionState.active) {
          final bool signedIn = snapshot.hasData;
          return signedIn ? Home() : WelcomePage();
        }
        return CircularProgressIndicator();
      },
    );
  }
}

