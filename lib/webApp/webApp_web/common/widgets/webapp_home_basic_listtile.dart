import 'package:flutter/material.dart';

class WebAppHomeBasicListTile extends StatefulWidget {
  final String iconImagePath;
  final Color iconImageColor;
  final String title;
  final Color titleColor;
  final VoidCallback? onTap;

  const WebAppHomeBasicListTile({
    Key? key,
    required this.iconImagePath,
    required this.iconImageColor,
    required this.title,
    required this.titleColor,
    required this.onTap,
  }) : super(key: key);


  @override
  State<WebAppHomeBasicListTile> createState() => _WebAppHomeBasicListTileState();
}

class _WebAppHomeBasicListTileState extends State<WebAppHomeBasicListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        widget.iconImagePath,
        color: widget.iconImageColor,
        height: 18,
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          color: widget.titleColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
    );
  }
}