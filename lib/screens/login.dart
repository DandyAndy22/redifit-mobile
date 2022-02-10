import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:redifit/widgets/validator.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  // final TextEditingController _emailTextController = TextEditingController();

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Authentication'),
      ),
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: const [
                Text('Login'),
                // Form(
                //   key: key,
                //   child: Column(
                //     children: const <Widget>[
                //       TextFormField(
                //         controller: _emailTextController,
                //         focusNode: _focusEmail,
                //         validator: (value) =>
                //             Validator.validateEmail(email: value),
                //       ),
                //       SizedBox(height: 8.0),
                //       TextFormField(
                //         controller: _passwordTextController,
                //         focusNode: _focusPassword,
                //         obscureText: true,
                //         validator: (value) =>
                //             Validator.validatePassword(password: value),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
