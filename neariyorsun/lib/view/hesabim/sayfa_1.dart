import 'package:flutter/material.dart';

class Sayfa1 extends StatefulWidget{
  const Sayfa1({Key? key}) : super(key:key);

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1>{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible =false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 70 , right: 30, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Lütfen e-posta adresi giriniz:",
                  border : OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent
                    ),
                  ),
                  prefixIcon: Icon(Icons.email)
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  labelText: "Lütfen parola giriniz:" ,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                      ? Icons.visibility
                          :Icons.visibility_off,
                    ),
                    onPressed: (){
                      setState(() {
                        isPasswordVisible =! isPasswordVisible;
                      });
                    },
                  )
                ),
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:(){},
                      child: Text("Parolamı Unuttum",
                      style: TextStyle(
                        color: Colors.deepPurpleAccent
                      ),
                      ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){},
                  child: Container(
                    padding: EdgeInsets.only(left:20,right: 20),
                    child: Text("Giriş Yap"),
                  ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(height: 50,),
              Text("Henüz hesabın yok mu?"),
              SizedBox(height: 10,),
              TextButton(onPressed: (){},
                  child: Text("Kayıt Ol",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}