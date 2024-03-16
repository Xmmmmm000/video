import 'package:flutter/material.dart';


class CartProduct extends StatefulWidget {
  const CartProduct({Key? key, required this.index_car}) : super(key: key);
  final int index_car;

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 182, 130, 130),
          borderRadius: BorderRadius.all(Radius.circular(14)
          )
      ),
      child: Column(
        children: <Widget>[
          Expanded(flex: 2 ,child: Image.network('${productList[widget.index_car].photo}',
            fit: BoxFit.scaleDown,
          ),
          ),
          Center(

              child: Expanded(child: Text('Название автомобиля: ${productList[widget.index_car].name}'
              ),
              )

          ),
          Center(
              child: Expanded(child: Text('Комплектация: ${productList[widget.index_car].complex}'
              ),
              )
          ),
          Center(
            child: Expanded(child: Text('Цена: ${productList[widget.index_car].cost} ₽')),
          ),
          Center(
              child: Expanded( child: ToCar(index_car: widget.index_car))


          )

        ],
      ),
    );
  }
}
