
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'signup.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var height= size.height;
    var width= size.width;
    return Scaffold(
      backgroundColor: HexColor("89CFF0"),
      body:
      SingleChildScrollView(reverse: true,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text("Login With Your Account",
                style: TextStyle(
                  color: HexColor("002C59"),
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: height/15,
              ),
              ClipRRect( borderRadius: BorderRadius.circular(28.0),
                  child: Container(
                    color: Colors.white,
                    height: height/1.5,
                    width: width/1.2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter your username",
                            style: TextStyle(
                              color: HexColor("002C59"),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("Welcome back to Danation. Its nice to see you again",
                            style: TextStyle(
                              color: HexColor("002C59"),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: height/15 ,
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
                          const SizedBox(
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
                                    width: 1.5,
                                  )
                                ) ,
                              ),
                              const SizedBox(
                                width:5 ,
                              ),
                              Text("No Account Found",style: TextStyle(
                                fontSize: 11,
                                color: HexColor("011A34").withOpacity(0.8),
                                fontWeight: FontWeight.w500
                              ),),
                              const SizedBox(width: 15,),
                              GestureDetector( onTap: (){},
                                child: Text("Forgot password ?",style: TextStyle(
                                    fontSize: 11,
                                  color: HexColor("011A34").withOpacity(0.9),
                                  fontWeight: FontWeight.w700
                                ),),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
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
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height/15,
                            width: width/1.39,
                            child: Row(
                              children: [
                                const Expanded(child: Divider( thickness: 2,)),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text("OR",
                                  style: TextStyle(
                                    color: HexColor("ADADAD"),
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Expanded(child: Divider(thickness:2,))
                              ],
                            ),
                          ),
                          Container(
                            height: height/15 ,
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
                                      child: Image.asset("assets/ngo.png"),
                                    ),

                                    hintText: "Login with NGO ID",
                                    contentPadding: const EdgeInsets.only(top: 30,),
                                    prefix: Container(
                                      width: 10,
                                    )
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only( left: 35),
                            child: InkWell( onTap: (){},
                              child: Container(
                                height: height/20,
                                width: width/2,
                                decoration: BoxDecoration(
                                    color: HexColor("2196F3"),
                                    borderRadius: BorderRadius.circular(21)
                                ) ,
                                child: const Center(
                                  child: Text("Sign In with Google",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600
                                  ),),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(padding:const EdgeInsets.only(left:20 ),
                            child: Row(
                              children: [
                                Text("Don't have an account? ",
                                  style: TextStyle(
                                    color: HexColor("383737"),
                                    fontSize: 13,
                                  ),
                                ),

                                GestureDetector(onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder:
                                      (context)=>
                                      const signup()
                                  ));
                                },
                                  child: Text("Register",style:
                                  TextStyle(
                                    color: HexColor("383737"),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  )
                                    ,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      )
      ,
    );
  }
}