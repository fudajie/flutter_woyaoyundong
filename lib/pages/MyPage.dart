import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_woyaoyundong/res/YColors.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyPage();
  }
}

class _MyPage extends State<MyPage> {
  Map maps = {
    "我的资料": "assets/images/my/self.png",
    "订单查询": "assets/images/my/oder.png",
    "运动轨迹": "assets/images/my/foot.png",
    "我的卡片": "assets/images/my/mycard.png",
    "我的赛事": "assets/images/my/event_bg.png",
    "我的培训": "assets/images/my/train.png",
    "设置": "assets/images/my/setting.png",
    "联系客服": "assets/images/my/kefu.png",
    "中国移动积分兑换": "assets/images/my/china_mobile.png",
  };

  List lists = [
    {"icon": "assets/images/my/self.png", "text": "我的资料"},
    {"icon": "assets/images/my/oder.png", "text": "订单查询"},
    {"icon": "assets/images/my/foot.png", "text": "运动轨迹"},
    {"icon": "assets/images/my/mycard.png", "text": "我的卡片"},
    {"icon": "assets/images/my/event_bg.png", "text": "我的赛事"},
    {"icon": "assets/images/my/train.png", "text": "我的培训"},
    {"icon": "assets/images/my/setting.png", "text": "设置"},
    {"icon": "assets/images/my/kefu.png", "text": "联系客服"},
    {"icon": "assets/images/my/china_mobile.png", "text": "中国移动积分兑换"},
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //true 滑动到底部
          reverse: false,
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Stack(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 58,
                      color: YColors.colorPrimary,
                      alignment: const Alignment(0.0, 1.0),
                      child: Text('个人中心',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ))),
                  Container(
                    width: 25,
                    height: 25,
                    margin: const EdgeInsets.fromLTRB(0, 30.0, 15, 0),
                    child: GestureDetector(
                        onTap: () {
                          print("tap");
                        },
                        child: Image.asset('assets/images/ding.png')),
                  )
                ],
              ),
              Container(
                color: YColors.colorPrimary,
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 59.5,
                      height: 62.5,
                      margin: const EdgeInsets.only(left: 15, right: 12),
                      child: Stack(
                          textDirection: TextDirection.ltr,
                          alignment: Alignment.topLeft,
                          children: <Widget>[
                            Positioned(
                              child: Image(
                                image: AssetImage('assets/images/test.png'),
                                width: 50,
                                height: 50,
                              ),
                              width: 50,
                              height: 50,
                              top: 12.5,
                              left: 9.5,
                            ),
                            Positioned(
                              child: Image(
                                image: AssetImage('assets/images/crown.png'),
                                width: 33,
                                height: 27.5,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.5),
                      height: 44,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '大洁洁洁',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '2020-02-29 到期',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ]),
                    ),
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.only(top: 14.5, right: 15),
                      alignment: Alignment.center,
                      height: 44,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '0.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '账户余额',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                color: YColors.colorPrimary,
                height: 38,
                child: Container(
                  margin: EdgeInsets.only(right: 15, left: 15),
                  padding: EdgeInsets.only(right: 6.5, left: 12),
                  //边框设置
                  decoration: new BoxDecoration(
                    color: YColors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    border: new Border.all(width: 1, color: Colors.black),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/vip_tag.png'),
                        width: 17,
                        height: 12.5,
                      ),
                      Expanded(
                        //Expanded包含的组件可以占据剩余的空间
                        child: Text(
                          '享专属订场通道、退订无忧等5大权益',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        width: 74.5,
                        height: 24,
                        decoration: new BoxDecoration(
                          color: YColors.c_ff6600,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border:
                              new Border.all(width: 1, color: YColors.c_ff6600),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '我的会员',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.1, // 1.1更居中
                              ),
                            ),
                            Image(
                              image:
                                  AssetImage('assets/images/arrow_white.png'),
                              width: 6,
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 79,
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(15, 22, 15, 10.5),
                      padding: EdgeInsets.fromLTRB(10.5, 13.5, 10, 12.5),
                      decoration: new BoxDecoration(
                        color: YColors.black,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        border: new Border.all(width: 1, color: YColors.black),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "我要运动VIP",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                  width: 85,
                                  height: 24,
                                  decoration: new BoxDecoration(
                                    color: YColors.c_ff6600,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    border: new Border.all(
                                        width: 1, color: YColors.c_ff6600),
                                  ),
                                  child: Text(
                                    "立即开通",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ))
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text(
                              "享专属订场通道、退订无忧、专属优惠券等多种会员特权 ",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 288,
                color: Colors.white,
                padding: EdgeInsets.only(left: 13.5),
                child: ListView(
                  padding: EdgeInsets.only(top: 0),
                  children: _buildList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return new List<Widget>.from(maps.keys.map((i) {
      return _item(i);
    })).toList();
  }

  Widget _item(String key) {
    return Container(
      height: 32,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        border:
            new Border(bottom: BorderSide(width: 1, color: Color(0xffe5e5e5))),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(maps[key]),
            width: 20,
            height: 20,
          ),
          Text(key),
          Image(image: AssetImage(maps[key])),
        ],
      ),
    );
  }
}
