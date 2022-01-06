import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'Log In | Sign Up',
              style: TextStyle(
                color: Colors.black54,
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
                          onPressed: () {},
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
