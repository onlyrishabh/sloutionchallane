import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

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
        title: const Text(
          "Category",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        // backgroundColor: Color(b74093),
        backgroundColor: Color(219354),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.3),
              BlendMode.modulate,
            ),
            image: const AssetImage('assets/group.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    // ElevatedButton(
                    //
                    //
                    //   onPressed: () {},
                    //   child: Center(child: Icon(Icons.arrow_back, color: Color(0xFF84D8FF),size: 35.0)),
                    //   style: ElevatedButton.styleFrom(
                    //
                    //     shadowColor: Colors.black,
                    //     elevation: 2,
                    //     shape: RoundedRectangleBorder(
                    //
                    //       borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                    //     ),
                    //     padding: EdgeInsets.all(10),
                    //     backgroundColor: Colors.white, // <-- Button color
                    //     // foregroundColor: Colors.white, // <-- Splash color
                    //   ),
                    // ),
                    Container(
                        height: 40,
                        width: 40,
                        // color: Color(0xFF84D8FF),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 2.0,
                                offset: const Offset(0.0, 1.0)),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF84D8FF),
                          size: 30.0,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore More",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Below we have various for you",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 2000,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Search...",
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Sectors",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(width: 15,),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final message = SnackBar(
                              content: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Food Category",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Fruits/Vegetables",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black)),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Dairy Products",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Cooked Food",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black)),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Packed Food",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              duration: const Duration(seconds: 3),
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
                          child: const Center(
                              child: Icon(Icons.fastfood_outlined,
                                  color: Colors.white, size: 30.0)),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: 5,
                            // shape: CircleBorder(),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius as needed
                            ),
                            padding: const EdgeInsets.all(10),
                            backgroundColor:
                                const Color(0xFF84D8FF), // <-- Button color
                            foregroundColor: Colors.black, // <-- Splash color
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Food",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    const SizedBox(
                      width: 40,
                    ),

                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Center(
                              child: Icon(Icons.shopping_cart_outlined,
                                  color: Colors.white, size: 30.0)),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: 5,
                            // shadowColor: Colors.tealAccent,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius as needed
                            ),
                            padding: const EdgeInsets.all(10),
                            backgroundColor:
                                const Color(0xFF84D8FF), // <-- Button color
                            foregroundColor: Colors.black, // <-- Splash color
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Clothing",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    const SizedBox(
                      width: 40,
                    ),

                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Center(
                              child: Icon(Icons.more_horiz,
                                  color: Colors.white, size: 30.0)),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius as needed
                            ),
                            padding: const EdgeInsets.all(10),
                            backgroundColor:
                                const Color(0xFF84D8FF), // <-- Button color
                            foregroundColor: Colors.black, // <-- Splash color
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "More",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Type of Food          Quantity",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5.0,
                                    offset: const Offset(0.0, 3.0)),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                ),
                                // hintText: "TextField 2"
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5.0,
                                    offset: const Offset(0.0, 3.0)),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(17.0)),
                                ),
                                // hintText: "TextField 2"
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),

                        // SizedBox(width: 25.0,),

                        // new Flexible(
                        //   child: new TextFormField(
                        //       decoration: InputDecoration(
                        //         border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.all(Radius.circular(17.0)),
                        //         ),
                        //           contentPadding: EdgeInsets.all(10)
                        //       )
                        //   ),
                        // ),
                        // // SizedBox(width: 20.0,),
                        //
                        // SizedBox(width: 20.0,),
                        // new Flexible(
                        //   child: new TextField(
                        //       decoration: InputDecoration(
                        //           border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.all(Radius.circular(17.0)),
                        //           ),
                        //           contentPadding: EdgeInsets.all(10)
                        //       )
                        //   ),
                        //
                        // ),
                        // SizedBox(width: 25.0,),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "+ADD",
                      style: TextStyle(
                        color: Color(0xFF00B2FF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 15,
                    ),
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              offset: const Offset(0.0, 3.0)),
                        ],
                        color: const Color(0xFFEFCCC1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // SizedBox(width: 16,),
                          Container(
                            // height: 30,
                            // width: 150,
                            child: const Icon(
                              Icons.map_outlined, color: Colors.white,
                              size: 30.0,
                              // shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(0.0, 0.8))],
                            ),
                          ),
                          // SizedBox(width: 80,),
                          Container(
                            height: 40,
                            width: 150,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5.0,
                                    offset: const Offset(0.0, 3.0)),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const Center(
                                child: Text(
                              "Google Map",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF00B2FF)),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black.withOpacity(0.3),
                        //       blurRadius: 5.0,
                        //       offset: Offset(0.0, 3.0)
                        //   ),
                        // ],
                        color: const Color(0xFF84D8FF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              // color: Color(0xFF84D8FF),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const Color(0xFF84D8FF),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 2.0,
                                      offset: const Offset(0.0, 1.0)),
                                ],
                              ),
                              child: const Icon(
                                Icons.flip_camera_ios_outlined,
                                color: Colors.white,
                                size: 30.0,
                              )),
                          // SizedBox(width: 16,),
                          // Icon(Icons.flip_camera_ios_outlined, color: Colors.white,size: 40.0,
                          //   shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(0.0, 0.8))],
                          //
                          // ),
                          // SizedBox(width: 80,),
                          Container(
                            height: 40,
                            width: 150,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5.0,
                                    offset: const Offset(0.0, 3.0)),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const Center(
                                child: Text(
                              "Images",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF00B2FF)),
                        boxShadow: [],
                        color: const Color(0xFF84D8FF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              // color: Color(0xFF84D8FF),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const Color(0xFF84D8FF),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 2.0,
                                      offset: const Offset(0.0, 1.0)),
                                ],
                              ),
                              child: const Icon(
                                Icons.handshake_outlined,
                                color: Colors.white,
                                size: 30.0,
                              )),
                          // SizedBox(width: 16,),
                          // Icon(Icons.handshake_outlined, color: Colors.white,size: 40.0,
                          //   shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 2.0, offset: Offset(0.0, 0.8))],
                          //
                          // ),
                          // SizedBox(width: 80,),
                          Container(
                            height: 40,
                            width: 150,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5.0,
                                    offset: const Offset(0.0, 3.0)),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const Center(
                                child: Text(
                              "Colabs",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF84D8FF),
                    shadowColor: Colors.black,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minimumSize: const Size(1000, 50),
                  ),
                  onPressed: () {},
                  child: const Text('Next'),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
