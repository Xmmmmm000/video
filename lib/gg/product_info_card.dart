import 'package:flutter/material.dart';

class CarCart extends StatelessWidget {
  const CarCart({Key? key, required this.index_car}) : super(key: key);
  final int index_car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''
      ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(7),
        children: <Widget>[
          Container(
            height: 200,
            child: SwiperImage (index_car: index_car),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Название: ${productList  [index_car].name}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Стоимость: ${productList[index_car].cost}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Описание:' ),

          ),
          Container(
            width: 200,
            height: 100,
            child: ListView(
              children: <Widget>[
                Text('${productList[index_car].description}')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Характеристики:'),
          ),
          Container(

            child: Center(
                child: ProductTable (index_car: index_car)),
          ),
          Container(

            margin: EdgeInsets.all(7),
            child: VideoWidget(index_car: index_car),
          )
        ],
      ),
    );
  }
}