import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lolproj/pages/components/card_details.dart';
import 'package:lolproj/pages/components/mycard.dart';
import '../controller/boss_controller.dart';
class App extends StatelessWidget {
  final BossController boss = Get.find<BossController>();
  @override
  Widget build(BuildContext context) {
    var mdq=MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Home",style: TextStyle(fontSize: mdq*0.0613),),
      ),
      child: SafeArea(
          child: Obx((){
            return boss.arr.isEmpty?Center(child: CupertinoActivityIndicator(radius: mdq*0.07,color: CupertinoColors.activeBlue,),):ListView.builder(
              itemCount: boss.arr.length,
              itemBuilder: (context, index) {
                return Dismissible(key: Key(index.toString()), child: GestureDetector(child: My_Card(arr: boss.arr,ind: index,),onTap: (){Get.to(CardDetails(arr: boss.arr,ind: index,));},));
              },
            );
          })
      ),
    );
  }
}