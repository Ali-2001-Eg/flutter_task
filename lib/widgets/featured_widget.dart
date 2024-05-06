import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: Colors.grey.shade300,thickness: 10),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Featured',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Icon(Icons.info)
                  ],
                ),
              Icon(Icons.arrow_drop_down,color: Colors.grey,size: 30,)
              ],
            ),
          ),
        ),
        Divider(thickness: 5,color: Colors.grey.shade300,)
      ],
    );
  }
}
