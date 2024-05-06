import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const Image(
          image: AssetImage('assets/images/flutter_egypt_test.jpg'),
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(5).add(const EdgeInsets.only(left: 20)),
          height: 35,
          color: const Color(0xff0099e5),
          child: const Text(
            'Group by Egyptian Flutter Community',
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 17,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
}

