import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final List<String> options;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.options,
  }) : super(key: key);

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile>
    with SingleTickerProviderStateMixin {
  bool _showOptions = false;
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-0.5, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            widget.title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Image.asset(
            "assets/images/home.png",
            color: Theme.of(context).colorScheme.inversePrimary,
            height: 20,
          ),
          trailing: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.translate(
                offset: _offsetAnimation.value,
                child: Icon(
                  _showOptions
                      ? Icons.arrow_forward_ios
                      : Icons.keyboard_arrow_down,
                  size: _showOptions ? 24 : 30,
                ),
              );
            },
          ),
          onTap: () {
            setState(() {
              _showOptions = !_showOptions;
              if (_showOptions) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            });
          },
        ),
        if (_showOptions)
          Column(
            children: widget.options
                .map(
                  (option) => ListTile(
                title: Text(option),
                onTap: () {
                  // Perform action for the selected option here
                },
              ),
            )
                .toList(),
          ),
      ],
    );
  }
}
