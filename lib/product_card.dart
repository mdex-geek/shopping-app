import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backGroundColour;
  //* two ways to build constructor
  // const ProductCard({
  //   super.key,
  // required this.title,
  // required this.price,
  // required this.image,
  // required this.backGroundColour,
  // });

  const ProductCard({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
    required this.backGroundColour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backGroundColour,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          // Image(
          //   image: AssetImage(image),
          //   height: 175,
          // ),

          //*short option

          Center(
            child: Image.asset(
              image,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
