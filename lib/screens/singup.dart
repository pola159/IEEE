import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:singupwhatsapp/screens/whatsapp.dart';

class singupclass extends StatefulWidget {
  const singupclass({Key? key}) : super(key: key);

  @override
  State<singupclass> createState() => _singupclassState();
}

class _singupclassState extends State<singupclass> {

  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Hello",
                style: TextStyle(
                  fontSize: 130,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("sing into your Account"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  controller: emailCont,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text("Email"),
                    hintText: "enter you email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 18, bottom: 18),
                child: TextField(
                  controller: passCont,
                  obscureText: true,
                  decoration: InputDecoration(
                    hoverColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    label: Text("password"),
                    hintText: "enter you password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {}, child: Text("forget you password ?")),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    SizedBox(
                      width: 280,
                    ),
                    Text(
                      "sing up ",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          if(passCont.text == "admin" || emailCont.text == "admin"){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
                              return const whatsapp();
                            }));
                          }else{
                            print("error");
                          }
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.pink,
                          radius: 30,
                          child: Icon(
                            Icons.arrow_forward,
                            size: 40,
                            color: Colors.white,

                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                    ),
                    Text("Don't have an account ?"),
                    TextButton(onPressed: () {}, child: Text("Create")),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
