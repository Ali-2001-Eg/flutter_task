  import 'package:flutter/material.dart';

AppBar myAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.replay),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.menu_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
