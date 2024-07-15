import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_mechanic/app/routes/app_pages.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        children: <Widget>[
          Row(
            children: [
              HeadingText(text: 'Notification'),
              const Spacer(),
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close_rounded))
            ],
          ),
          const Divider(),
          // Text('Today'),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.buttonColor,
                        child: Icon(Icons.settings),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadingText(
                              text: 'New service available',
                              size: 15,
                            ),
                            const Text('You can now track mechanics ...',
                                softWrap: true, style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      const Text('19:00')
                    ],
                  ),
                );
              }),
              separatorBuilder: ((context, index) {
                return const SizedBox(height: 8);
              }),
              itemCount: 15)
        ],
      ),
    );
  }
}
