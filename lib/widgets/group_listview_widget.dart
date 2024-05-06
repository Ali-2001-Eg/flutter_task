import 'package:flutter/material.dart';

class GroupListviewWidget extends StatelessWidget {
  const GroupListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> elements = [
      'Reels',
      'You',
      'Chats',
      'Guides',
      'Featured',
      'Photos',
      'Events',
      'Files',
      'Albums'
    ];
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        itemCount: elements.length,
        padding: const EdgeInsets.symmetric( horizontal: 30),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(5).add(const EdgeInsets.symmetric(horizontal: 5)),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
          color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            elements[index],
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        
      ),
    );
  }
}
