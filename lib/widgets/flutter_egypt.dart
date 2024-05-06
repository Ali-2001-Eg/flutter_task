import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlutterEgyptWidget extends StatelessWidget {
  const FlutterEgyptWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 20),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'FlutterEgypt',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svg/globe-showing-europe-africa.svg',
                width: 18,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Public group',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 10,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '75k ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'members',style: TextStyle(color: Colors.grey)
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
