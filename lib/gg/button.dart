import 'package:flutter/material.dart';


class ToCar extends StatelessWidget {

  const ToCar({Key? key, required this.index_car}) : super(key: key);

  final int index_car;

  @override

  Widget build(BuildContext context) {

    return ElevatedButton(

        child: Text('Подробнее...'),

        onPressed: (){




          Navigator.push(context,

              MaterialPageRoute(builder: (context) => CarCart(index_car: index_car))

          );

        }




    );

  }

}