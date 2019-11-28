import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          title: Text(
              'Collection样式'
          ),
        ),
        body: CollectionDemo(),
      ),
      theme: ThemeData( //设置主题颜色
          primarySwatch: Colors.yellow
      ),
    );
  }
}

class CollectionDemo extends StatelessWidget{

  Widget _getListData(context,index){

    return Container(

      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 15),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          )
        ],
      ),

      decoration: BoxDecoration(
          border: Border.all(
              color: Color.fromRGBO(233, 233, 233, 0.9),
              width: 1
          )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing:10.0 ,   //水平子 Widget 之间间距
          mainAxisSpacing: 10.0,    //垂直子 Widget 之间间距
          crossAxisCount: 2,  //一行的 Widget 数量
        ),

        itemCount: listData.length,
        itemBuilder: this._getListData,
    );
  }
}
