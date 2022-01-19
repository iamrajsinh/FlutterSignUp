import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  static const routeName = '/signup';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  void _submit(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black54,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'S I G N   U P',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),

      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.amber,
                      Colors.deepOrangeAccent,
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
                height: 300,
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
                            controller: _passwordController,
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
                        TextFormField(
                            decoration: InputDecoration(labelText: 'Confirm Password',
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black54,
                                )),
                            obscureText: true,

                            validator: (value)
                            {
                              if(value!.isEmpty || value != _passwordController.text)
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
