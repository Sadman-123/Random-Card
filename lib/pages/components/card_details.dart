import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  dynamic arr=[];
  int ind=0;
  CardDetails({required this.arr,required this.ind});
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Details of ${arr[ind]['name']['first']}",style: TextStyle(fontSize: mdw*0.0613),),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: mdh * 0.1,
            ),
           Center(
             child: Stack(
               clipBehavior: Clip.none,
               children: [
                 Container(
                   margin: EdgeInsets.all(10),
                   width: mdw * 0.9,
                   clipBehavior: Clip.none, // Allow overflow
                   child: Stack(
                     clipBehavior: Clip.none,
                     children: [
                       Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: CupertinoColors.activeGreen,
                         ),
                         height: mdh * 0.4,
                         width: mdw * 0.9,
                       ),
                       Positioned(
                         left: mdw*0.281,
                         bottom: mdh*0.322,
                         top: -mdh*0.096, // Positioning the CircleAvatar to overflow
                         child: CircleAvatar(
                           backgroundImage:
                           NetworkImage("${arr[ind]['picture']['medium']}"),
                           radius: 60,
                         ),
                       ),
                     ],
                   ),
                 ),
                 Positioned(
                   left: 30,
                   top:mdh*0.11,
                   height: mdh*0.28,
                   width: mdw*0.79,
                   child: Container(
                     padding: EdgeInsets.all(10),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           alignment: Alignment.topLeft,
                           child: Column(
                             children: [
                               Text("${arr[ind]['name']['first']}",style: TextStyle(fontSize: mdw*0.07,fontWeight: FontWeight.bold),),
                               Text("${arr[ind]['email']}",style: TextStyle(fontSize: mdw*0.06),),
                               Text("${arr[ind]['phone']}",style: TextStyle(fontSize: mdw*0.06),)
                             ],
                           ),
                         ),
                         Container(
                           child: Text("${arr[ind]['location']['country']}",style: TextStyle(fontSize: mdw*0.06),),
                         )
                       ],),
                     decoration: BoxDecoration(
                       color: CupertinoColors.activeOrange,
                       borderRadius: BorderRadius.circular(20)
                     ),
                   ),
                 )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
