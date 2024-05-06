import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JoinedAndInviteButton extends StatefulWidget {
  const JoinedAndInviteButton({
    super.key,
  });

  @override
  State<JoinedAndInviteButton> createState() => _JoinedAndInviteButtonState();
}

class _JoinedAndInviteButtonState extends State<JoinedAndInviteButton> {
  String selected = 'Joined';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDropdownMenu(context);
            },
            style: ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(MediaQuery.sizeOf(context).width/3,50)),
              // maximumSize: MaterialStatePropertyAll(Size(MediaQuery.sizeOf(context).width/3,50)),
                backgroundColor: MaterialStatePropertyAll(Colors.grey[100]),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.groups_outlined,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 100
                    ),
                    child: Text(
                      selected,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),const SizedBox(
                      width: 10,
                    ),
          ElevatedButton(
            onPressed: () {
              showDropdownMenu(context);
            },
            style: ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(MediaQuery.sizeOf(context).width/3,50)),

                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xff0099e5)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Invite',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showDropdownMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select an option'),
          content: DropdownButton<String>(
            value: selected,
            items: <String>['Joined', 'Leave Group', 'Manage Notifications']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selected = newValue!;
              });
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        );
      },
    );
  }
}
