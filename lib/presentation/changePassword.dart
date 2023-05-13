import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height *.05 ,
            color: Colors.grey,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    obscureText: _obscureText,
                    // Autres attributs du champ de texte
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                ),
              ],
            ),
          ),
        )
      ),
    );


  }
}
