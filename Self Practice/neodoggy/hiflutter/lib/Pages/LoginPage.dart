import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/AppBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<LoginPage> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool enableLogin() => (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty);
  bool enableLoginBT = false;

  @override
  void initState() {
    super.initState();
    usernameController.addListener(() {
      if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
        setState(() {
          enableLoginBT = true;
        });
      } else {
        setState(() {
          enableLoginBT = false;
        });
      }
    });
    passwordController.addListener(() {
      if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
        setState(() {
          enableLoginBT = true;
        });
      } else {
        setState(() {
          enableLoginBT = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        body:NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              AppBar_NTB(),
            ];
          },
          body: LayoutBuilder(
            builder:(BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Align(
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 600),
                      width: 400,
                      height: 500,
                      padding: EdgeInsets.only(left: 50,right: 50),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: enableLoginBT
                                ? Color(0xFF00ba7c).withOpacity(.6)
                                : Color(0xFFff4060).withOpacity(.6),
                            spreadRadius: -50,
                            blurRadius: 100,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        color: Color(0xFF1a1a1a),
                        shadowColor: enableLoginBT
                            ? Color(0xFF00ba7c)
                            : Color(0xFFff4060),
                        child: Container(
                          padding: EdgeInsets.only(left: 25,right: 25),
                          child: Form(
                            key: _formKey,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 50,),
                                Icon(Icons.account_circle,color: Color(0xFFFFFFFF),size: 60,),
                                SizedBox(height: 20,),
                                Text('LOGIN',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20),),
                                SizedBox(height: 40,),
                                TextFormField(
                                  controller: usernameController,
                                  cursorColor: Color(0xFFcacaca),
                                  style: TextStyle(color: Color(0xFFFFFFFF)),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1,color: Color(0xFFFFFFFF))
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1,color: Color(0xFFFFFFFF))
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1,color: Color(0xFFff4060))
                                    ),
                                    // border: UnderlineInputBorder(
                                    //   borderSide: BorderSide(width: 3,color: Color(0xFFFFFFFF))
                                    // ),
                                    labelText: 'USERNAME',
                                    labelStyle: TextStyle(color: Color(0xFFFFFFFF),fontSize: 12),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  cursorColor: Color(0xFFcacaca),
                                  style: TextStyle(color: Color(0xFFFFFFFF)),
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFFFFFFFF))
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFFFFFFFF))
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFFff4060))
                                      ),
                                      // border: UnderlineInputBorder(
                                      //   borderSide: BorderSide(width: 3,color: Color(0xFFFFFFFF))
                                      // ),
                                      labelText: 'PASSWORD',
                                      labelStyle: TextStyle(color: Color(0xFFFFFFFF),fontSize: 12)
                                  ),
                                ),
                                SizedBox(height: 75,),
                                ShakeWidget(
                                  duration: Duration(milliseconds: 500),
                                  shakeConstant: ShakeDefaultConstant2(),
                                  autoPlay: false,
                                  enableWebMouseHover: enableLoginBT ? false : true,
                                  child: ElevatedButton(
                                    onPressed: !enableLoginBT
                                        ? null
                                        : () {
                                      // go  further.
                                    },// used with firebase
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.all(0),
                                      ),
                                    child: AnimatedContainer(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: enableLoginBT
                                            ? Color(0xFF00ba7c)
                                            : Color(0xFFff4060),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 6),
                                      duration: Duration(milliseconds: 600),
                                      child: Center(
                                        child: Text(
                                          'LOGIN',
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}
