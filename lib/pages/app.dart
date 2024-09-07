import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lolproj/pages/components/mycard.dart';
import '../controller/boss_controller.dart';
class App extends StatelessWidget {
  BossController boss=Get.put(BossController());
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Home"),
      ),
      child: SafeArea(
          child: ListView.builder(
            itemCount: boss.arr.length,
            itemBuilder: (context, index) {
              return Dismissible(key: Key(index.toString()), child: My_Card(arr: boss.arr,ind: index,));
            },
          )
      ),
    );
  }
}