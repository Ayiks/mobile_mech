import 'package:flutter/material.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(
                    text: 'Ivy Marian',
                    size: 15,
                  ),
                  Text('ivy@gmail.com')
                ],
              ),
              const Spacer(),
              Icon(Icons.edit_note_sharp),
            ],
          ),
          const SizedBox(height: 15),
          const Divider(),
          ListTile(
            leading: Icon(Icons.edit_attributes_outlined),
            title: Text('Vehicle details'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Service history'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.track_changes),
            title: Text('Track service'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.support_agent_rounded),
            title: Text('Customer support'),
          ),
        ],
      ),
    );
  }
}
