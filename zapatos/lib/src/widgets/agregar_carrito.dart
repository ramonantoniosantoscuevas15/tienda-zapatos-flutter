import 'package:flutter/material.dart';
import 'package:zapatos/src/widgets/widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {
  final double monto;
  const AgregarCarritoBoton({Key? key, required this.monto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1), 
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          children: [
            const SizedBox(width: 20,),
            Text('\$$monto', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            const Spacer(),
           const BotonNaranja(texto: 'Add To Cart'),
           const SizedBox(width: 20,)
          ],
        ),
      ),
    );
  }
}
