import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../sabitler/ext.dart';

class Hesabim extends StatefulWidget {
  @override
  _HesabimState createState() => _HesabimState();
}

class _HesabimState extends State<Hesabim>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: renk("E0B0FF"),
            title: Center(
              child: Text(
                "neArıyorsun'a Hoşgeldin",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurpleAccent
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Lütfen e-posta adresi girin:",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurpleAccent
                      ),
                    ),
                    prefixIcon: Icon(Icons.email)
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: passwordController,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Lütfen parola girin:",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisible
                          ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: (){
                        setState(() {
                          isPasswordVisible =!isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Text("Parolamı Unuttum",
                      style: TextStyle(
                        color: Colors.deepPurpleAccent
                      ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                ElevatedButton(
                   onPressed: (){},
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20), // Sağ ve sol kenarları burada ayarlayın
                    child: Text('Giriş Yap'),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                  ),
                 ),
                SizedBox(height: 50),
                Text("Henüz hesabın yok mu?"),
                SizedBox(height: 10),
                TextButton(
                    onPressed:(){},
                child: Text("Kayıt Ol",
                style: TextStyle(
                  color: Colors.deepPurpleAccent
                ),
                ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
