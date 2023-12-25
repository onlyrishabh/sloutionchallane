
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    var height =size.height;
    var width =size.width;
    return Scaffold(
      backgroundColor: HexColor("89CFF0"),
      body: 
      SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [

              const SizedBox(
                height: 60,
              ),
              Text("SignUp Your Account",
                style: TextStyle(
                  color: HexColor("002C59"),
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: height/9,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0),
                  color: Colors.white,
                ),
                height: height/1.8,
                width: width/1.2,
                child: Padding(padding: const EdgeInsets.all(20.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create your account",
                        style: TextStyle(
                          color: HexColor("002C59"),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,),
                      Text("Welcome to Danation. Lets get started",
                        style: TextStyle(
                          color: HexColor("002C59"),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: height/17 ,
                        width: width /1.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: HexColor("414141"),
                            width: 1.2,
                          ),
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField( cursorColor: HexColor("011A34").withOpacity(0.6),
                            decoration:
                            InputDecoration(
                                border: InputBorder.none,
                                prefixIconConstraints: BoxConstraints(
                                  maxHeight: height/2,maxWidth: width/1,
                                ),
                                prefixIcon: Container(
                                  height: height/10,
                                  width: width/15,
                                  child: Image.asset("assets/Vector.png"),
                                ),
                                hintText: "Username",
                                contentPadding: const EdgeInsets.only(top: 30,),
                                prefix: Container(
                                  width: 10,
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: height/17,
                        width: width /1.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: HexColor("414141"),
                            width: 1.2,
                          ),
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField( cursorColor: HexColor("011A34").withOpacity(0.6),
                            decoration:
                            InputDecoration(
                                border: InputBorder.none,
                                prefixIconConstraints: BoxConstraints(
                                  maxHeight: height/2,maxWidth: width/1,
                                ),
                                prefixIcon: Container(
                                  height: height/10,
                                  width: width/15,
                                  child: Image.asset("assets/mail.png"),
                                ),
                                hintText: "Email",
                                contentPadding: const EdgeInsets.only(top: 30,),
                                prefix: Container(
                                  width: 10,
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height/50,
                            width: width/22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: HexColor("414141"),
                                  width: 1.7,
                                )
                            ) ,
                          ),
                          const SizedBox(
                            width:5 ,
                          ),
                          Text("This username is available",style: TextStyle(
                              fontSize: 12,
                              color: HexColor("011A34").withOpacity(0.8),
                              fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height/50,
                            width: width/22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: HexColor("414141"),
                                  width: 1.7,
                                )
                            ) ,
                          ),
                          const SizedBox(
                            width:5 ,
                          ),
                          Text("Invalid Email Found",style: TextStyle(
                              fontSize: 12,
                              color: HexColor("011A34").withOpacity(0.8),
                              fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell( onTap: (){
                        },
                        child: Container(
                          height: height/20,
                          width: width/1.4,
                          decoration: BoxDecoration(
                              color: HexColor("002C59"),
                              borderRadius: BorderRadius.circular(21)
                          ) ,
                          child: const Center(
                            child: Text("Continue",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
        ),
      )
      )
    );
  }
}