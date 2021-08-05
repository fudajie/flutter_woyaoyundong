import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_woyaoyundong/res/YColors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '登录',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        width: double.infinity, //全屏
        margin: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: new BoxDecoration(
                      border: new Border(
                          bottom: BorderSide(width: 1, color: YColors.c_e5)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "账号",
                            style: TextStyle(
                              fontSize: 16,
                              color: YColors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: new InputDecoration(
                              border: InputBorder.none, //去除边框
                              hintText: '请输入账号',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "密码",
                            style: TextStyle(
                              fontSize: 16,
                              color: YColors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: new InputDecoration(
                              border: InputBorder.none, //去除边框
                              hintText: '请输入密码',
                              errorText: '文字字母',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
