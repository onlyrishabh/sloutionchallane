

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cateogary",
          style: TextStyle(fontWeight: FontWeight.bold,
            color: HexColor("011A34"),
          ),),
        backgroundColor: HexColor("89CFF0"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {

                          final message=SnackBar(
                            content:
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Food Cateogary", style:
                                TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor("011A34"),)),

                                SizedBox(height: 10,),
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    ElevatedButton(onPressed: (){}, child:  Text("Fruits/Vegetable", style:
                                    TextStyle(fontSize: 13,color: HexColor("011A34").withOpacity(0.8),
                                    )
                                    ),
                                    ),

                                    ElevatedButton(onPressed: (){}, child:  Text("Dairy Product", style:
                                    TextStyle(fontSize: 13,color: HexColor("011A34").withOpacity(0.8)
                                    ),
                                    ),
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    ElevatedButton(onPressed: (){}, child:  Text("Cooked Food", style:
                                    TextStyle(fontSize: 13,color: HexColor("011A34").withOpacity(0.8),)),),

                                    ElevatedButton(onPressed: (){}, child:  Text("Packed Food", style:
                                    TextStyle(fontSize: 13,color: HexColor("011A34").withOpacity(0.8),)),),

                                  ],
                                )
                              ],

                            ),
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.white,
                            // action: SnackBarAction(
                            //   // label: "",
                            //   // onPressed: (){
                            //   //
                            //   // },
                            // ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(message);

                        },
                        child: Icon(Icons.fastfood_outlined, color: Colors.white,size: 40.0),
                        style: ElevatedButton.styleFrom(
                          // shape: CircleBorder(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                          padding: EdgeInsets.all(20),
                          backgroundColor: HexColor("6CD0FF"), // <-- Button color
                          foregroundColor: HexColor("011A34"),// <-- Splash color
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Food",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.shopping_cart_outlined, color: Colors.white,size: 40.0),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                          padding: EdgeInsets.all(20),
                          backgroundColor: HexColor("6CD0FF"), // <-- Button color
                          foregroundColor: HexColor("011A34"), // <-- Splash color
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Clothing",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.more_horiz, color: Colors.white,size: 40.0),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                          padding: EdgeInsets.all(20),
                          backgroundColor: HexColor("6CD0FF"), // <-- Button color
                          foregroundColor: HexColor("011A34"), // <-- Splash color
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("More",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text("Types Of Food"),
                  // Text("Types Of               Food",style: TextStyle(color: Colors.black,
                  //   fontSize: 15,fontWeight: FontWeight.bold,
                  // ),),
                  // SizedBox(height: 10,),
                  // TextFormField(
                  //   // controller: loginEmailController,
                  //   cursorColor: Colors.black,
                  //   keyboardType: TextInputType.emailAddress,
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     floatingLabelBehavior: FloatingLabelBehavior.never,
                  //     fillColor: Colors.white,
                  //     contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 5.0, 20.0),
                  //     // contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  //     border: OutlineInputBorder( ),
                  //   ),
                  // ),


                  Text("Types Of Food              Quantity",style: TextStyle(color: HexColor("011A34"),
                    fontSize: 18,fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 5,),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // SizedBox(width: 25.0,),

                      new Flexible(
                        child: new TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.all(10)
                            )
                        ),
                      ),
                      SizedBox(width: 20.0,),

                      SizedBox(width: 20.0,),
                      new Flexible(
                        child: new TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.all(10)
                            )
                        ),

                      ),
                      // SizedBox(width: 25.0,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("+ADD",style: TextStyle(color: HexColor("6CD0FF"),
                    fontSize: 19,fontWeight: FontWeight.bold,
                  ),),

                  SizedBox(height: 10,),
                  Text("Google Map",style: TextStyle(color:HexColor("011A34"),
                    fontSize: 18,fontWeight: FontWeight.bold,
                  ),),

                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.map_outlined, color: Colors.white,size: 40.0),
                    style: ElevatedButton.styleFrom(
                      // shape: CircleBorder(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                      ),
                      padding: EdgeInsets.all(20),
                      backgroundColor:HexColor("6CD0FF"), // <-- Button color
                      foregroundColor: HexColor("011A34"),// <-- Splash color
                    ),
                  ),

                  SizedBox(height: 20,),


                  Text("Images            Colabs",style: TextStyle(color: HexColor("011A34"),
                    fontSize: 18,fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.image_outlined, color: Colors.white,size: 40.0),
                        style: ElevatedButton.styleFrom(
                          // shape: CircleBorder(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                          padding: EdgeInsets.all(20),
                          backgroundColor: HexColor("6CD0FF"), // <-- Button color
                          foregroundColor: HexColor("011A34"), // <-- Splash color
                        ),
                      ),

                      SizedBox(width: 40,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.handshake_outlined, color: Colors.white,size: 40.0),
                        style: ElevatedButton.styleFrom(
                          // shape: CircleBorder(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                          padding: EdgeInsets.all(20),
                          backgroundColor: HexColor("6CD0FF"), // <-- Button color
                          foregroundColor: HexColor("011A34"), // <-- Splash color
                        ),
                      ),
                    ],
                  )

                ],
              ),

              SizedBox(height: 35,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: HexColor("6CD0FF"),
                  onPrimary: Colors.white,
                  shadowColor: HexColor("6CD0FF"),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  minimumSize: Size(1000, 50),
                ),
                onPressed: () {},
                child: Text('Next',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
              )


            ],
          ),
        ),
      ),
    );
  }
}
