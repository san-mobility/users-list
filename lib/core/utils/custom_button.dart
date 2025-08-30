import 'package:flutter/material.dart';
import '../../../../common/common.dart';
import 'custom_loader.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? buttonColor;
  final Color? textColor;
  final double? textSize;
  final Function()? onTap;
  final bool? isLoader;
  final bool? isBorder;
  const CustomButton({
    super.key,
    required this.buttonName,
    this.height,
    this.width,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    this.textSize,
    this.onTap,
    this.isLoader = false,
    this.isBorder,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (isLoader != null && !isLoader!) ? onTap : null,
      child: Container(
        height: height ?? size.width * 0.1,
        width: width ?? size.width * 0.5,
        decoration: BoxDecoration(
            border: (isBorder != null && isBorder!)
                ? Border.all(color: Theme.of(context).primaryColor)
                : null,
            color: buttonColor ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 2)),
        child: Center(
          child: !isLoader!
              ? MyText(
                  text :buttonName,
                  textStyle: AppTextStyle.boldStyle().copyWith(
                    color: textColor ?? AppColors.white,
                    fontSize: textSize ?? 20,
                  ),
                )
              : SizedBox(
                  height: size.width * 0.05,
                  width: size.width * 0.05,
                  child: const Loader(
                    color: AppColors.white,
                  )),
        ),
      ),
    );
  }
}
