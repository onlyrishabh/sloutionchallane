import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}


class _secondPageState extends State<secondPage> {

  var valueChoose ;

  // List of items in our dropdown menu
  var listitems = [
    'Ashram',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        leading: BackButton(),
        backgroundColor: HexColor("89CFF0"),
        title: Text("Contribute",style: TextStyle(fontWeight: FontWeight.bold,
            color: HexColor("011A34"),
            fontSize: 20),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("Select Type",style: TextStyle(fontWeight: FontWeight.bold,color: HexColor("011A34"),
                fontSize: 20)),
            SizedBox(height: 5,),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child:
            Container(
              padding: EdgeInsets.only(left: 10,right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1.2),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: DropdownButton(
                  hint: Text("Select Items: "),
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                      color: HexColor("011A34"),
                      fontSize: 22
                  ),
                  value: valueChoose,
                  items: listitems.map((valueItem){
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                  onChanged: (newValue){
                    setState(() {
                      valueChoose=newValue;
                    });
                  }
              ),
            ),
            // ),

            SizedBox(height: 18,),

            Text("Location",style: TextStyle(color: HexColor("011A34"),
                fontWeight: FontWeight.bold,fontSize: 20)),
            SizedBox(height: 5,),
            TextField(
              maxLines: 2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                hintText: 'Here will be always the current location \nof the User',hintStyle: TextStyle(
                color: CupertinoColors.systemGrey,
                fontSize: 18,
              )
              ),
            ),

            SizedBox(height: 18,),
            Text("Upload Images",style: TextStyle(color: HexColor("011A34"),
                fontWeight: FontWeight.bold,fontSize: 20)),
            SizedBox(height: 5,),
            Container(
              child: Icon(Icons.image,color: Colors.grey.withOpacity(0.7),size: 80,),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1.2),
                  borderRadius: BorderRadius.circular(15)
              ),
            ),

            SizedBox(height: 18,),
            Text("Details",style: TextStyle(color:HexColor("011A34") ,
                fontWeight: FontWeight.bold,fontSize: 20)),
            SizedBox(height: 5,),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                // hintText: 'Enter a search term',

              ),
            ),

            SizedBox(height: 18,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){},
                  child: Text("Cancel"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: HexColor("011A34"),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minimumSize: Size(170, 50),
                  ),
                ),

                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("011A34"),
                      onPrimary: Colors.white,
                      shadowColor: HexColor("89CFF0"),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      minimumSize: Size(170, 50),
                    ),
                    child: Text("Next")
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
