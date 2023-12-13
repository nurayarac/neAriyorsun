import 'package:flutter/material.dart';

import '../../sabitler/ext.dart';

class Sayfa2 extends StatefulWidget{
  const Sayfa2({Key? key}) : super(key:key);

  @override
  State<Sayfa2> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa2>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Neden Üye Olmalıyım?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: renk("E0B0FF")
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check, color: Colors.deepPurpleAccent),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Favori listeni oluştur.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check, color: Colors.deepPurpleAccent),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Oluşturduğun listeyi paylaş.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check, color: Colors.deepPurpleAccent),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Daha iyi bir alışveriş deneyimi yaşa.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Lütfen e-posta adresinizi girin:",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  labelText: "Lütfen parola oluşturun:",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  // Üye ol butonuna tıklanınca yapılacak işlemleri buraya ekleyebilirsiniz.
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text('Üye Ol'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                ),
              ),
            ],
              ),
          ),
      ),
    );
  }
}