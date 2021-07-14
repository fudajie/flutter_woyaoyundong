import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyPage();
  }
}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心",style: TextStyle(color: Colors.white),),
        centerTitle: true,//标题居中
        actions: [
          IconButton(icon: Image.asset('assets/images/ding.png'), onPressed: (){
            print("消息");
          })
        ],
      ),
      body: Center(
        child: Text('我的'),
      ),
    );
  }
}
