
import 'package:flutter/material.dart';

import '../../common/common.dart';

class NavigationIconWidget extends StatefulWidget {
  final Widget icon;
  final bool? isShadowWidget;
  final void Function()? onTap;
  final double? height;
  final double? width;
  const NavigationIconWidget({
    super.key,
    required this.icon,
    this.isShadowWidget = false,
    this.onTap,
    this.height,
    this.width,
  });

  @override
  State<NavigationIconWidget> createState() => _NavigationIconWidgetState();
}

class _NavigationIconWidgetState extends State<NavigationIconWidget> {
  bool _isTappedOnce = false;

  void handleTap() {
    if (_isTappedOnce) {
      return;
    } else {
      setState(() {
        _isTappedOnce = true;
      });
      widget.onTap?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onTapCancel: () {},
      onDoubleTap: () {},
      child: Container(
        height: size.width * 0.1,
        width: size.width * 0.1,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(
                color: Theme.of(context).scaffoldBackgroundColor.withAlpha((0.4 * 255).toInt()),
                width: 0.5),
                borderRadius: BorderRadius.circular(20),
            boxShadow: widget.isShadowWidget!
                ? [
                    BoxShadow(
                        color: Theme.of(context).shadowColor.withAlpha((0.1 * 255).toInt()),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ]
                : null),
        child: Center(child: widget.icon),
      ),
    );
  }
}
