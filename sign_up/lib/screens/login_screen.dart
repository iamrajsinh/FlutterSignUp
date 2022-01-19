import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  void _submit(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'L O G I N',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(onPressed: (){
              Navigator.of(context).pushNamed(SignupScreen.routeName);
            }, child: Row(
              children: [
                Text('SIGN UP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,

                ),)
              ],
            )),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.amber,
                ]
              )
            ),
          ),
          Center(
            child: Card(
              color: Colors.white54,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ),
              child: Container(
                height: 260,
                  width: 300,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black54,
                          )),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value)
                            {
                              if(value!.isEmpty || !value.contains('@'))
                                {
                                  return 'Invalid Email';
                                }
                              return null;
                            },
                          onSaved: (value)
                          {

                          }
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black54,
                              )),
                          obscureText: true,
                          validator: (value)
                          {
                            if(value!.isEmpty || value.length<=5)
                              {
                                return 'Make sure it contaions 5 or more characters';
                              }
                            return null;
                          },
                          onSaved: (value)
                            {

                            }
                        ),
                        SizedBox(height: 30),
                        RaisedButton(
                        shape: StadiumBorder(

                        ),
                          onPressed: () {
                          _submit();
                          },
                          color: Colors.black54,

                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.white70,


                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
