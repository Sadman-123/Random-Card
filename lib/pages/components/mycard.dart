import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class My_Card extends StatelessWidget
{
  dynamic arr=[];
  var ind=0;
  My_Card({required this.arr,required this.ind});
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    return Container(
      height: mdh*0.14,
      width: mdw*0.96,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: CupertinoColors.activeOrange
      ),
      child: Row(
        children: [
          Container(
            height: mdh*0.14,
            width: mdw*0.24,
            padding: EdgeInsets.all(10),
            child: Obx(()=>Hero(tag: "${arr[ind]['email']}", child: CircleAvatar(backgroundImage: NetworkImage("${arr[ind]['picture']['medium']}"),radius: 56,),),),
            decoration: BoxDecoration(
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: CupertinoColors.activeGreen,

              ),
              child: Column(
                children: [
                  Obx(()=>Text("${arr[ind]['name']['first']}",style: TextStyle(fontSize: mdw*0.077),),),
                  Obx(()=>Text("${arr[ind]['phone']}",style: TextStyle(fontSize: mdw*0.047),)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  color: CupertinoColors.destructiveRed,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  )
              ),
              child: Icon(CupertinoIcons.phone,color: CupertinoColors.black,size: mdh*0.04,),
            ),
          )
        ],
      ),
    );
  }
}