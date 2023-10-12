import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nb_utils/nb_utils.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Pop up practice",
            style: TextStyle(color: blackColor),
          )),
      body: GestureDetector(
        child: const Center(child: Text('Click Me')),
        onTap: () {
          showModalBottomSheet(
            constraints: BoxConstraints.expand(height: SizeConfig.screenHeight),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            context: context,
            builder: (context) => CustomBottomSheet(),
          );
        },
      ),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(
            children: [
              Icon(TablerIcons.file),
              16.width,
              Text(
                "This is file Name",
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(TablerIcons.share),
              26.width,
              Text(
                "Share",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.manage_accounts_outlined),
              16.width,
              Text(
                "Manage access",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(TablerIcons.star),
              16.width,
              Text(
                "Add to Starred",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(Icons.offline_pin_outlined),
              16.width,
              Text(
                "Make available offline",
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
          indent: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(Icons.link_outlined),
              16.width,
              Text(
                "Copy link",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(TablerIcons.copy),
              16.width,
              Text(
                "Make a copy",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(TablerIcons.send),
              16.width,
              Text(
                "Send a copy",
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
          indent: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(Icons.open_with_outlined),
              16.width,
              Text(
                "Open with",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Row(
            children: [
              Icon(TablerIcons.download),
              16.width,
              Text(
                "Download",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
