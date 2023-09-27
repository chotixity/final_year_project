import 'package:flutter/material.dart';

enum AuthMode { login, signUp }

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  AuthMode _authMode = AuthMode.login;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _authMode = AuthMode.login;
    // TODO: implement initState
    super.initState();
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.login) {
      setState(() {
        _authMode = AuthMode.signUp;
      });
    } else {
      setState(() {
        _authMode = AuthMode.login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(30),
          ),
          height: _authMode == AuthMode.login ? 300 : 350,
          width: MediaQuery.of(context).size.width * .8,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {}
                        return null;
                      },
                      decoration: const InputDecoration(label: Text('Email')),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration:
                          const InputDecoration(label: Text('Password')),
                    ),
                    _authMode == AuthMode.signUp
                        ? TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                                label: Text('Confirm Password')),
                          )
                        : const SizedBox(
                            height: 1,
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).primaryColor)),
                      onPressed: () {},
                      child: Text(
                        _authMode == AuthMode.login ? 'Login' : 'Sign Up',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _switchAuthMode();
                      },
                      child: Text(
                        _authMode == AuthMode.signUp
                            ? 'Login Instead'
                            : 'Sign Up Instead',
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
