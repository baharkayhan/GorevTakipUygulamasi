import 'package:flutter/material.dart';
import 'package:gorevim/utils/utils.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    super.key,
    this.child, // Kapsayıcı içindeki widget
    this.height, // Kapsayıcı yüksekliği
    this.width, // Kapsayıcı genişliği
    this.color, // Kapsayıcı rengi
    this.borderRadius = 16, // Kenar yuvarlaklığı
    this.padding, // İç boşluk
  });
  final Widget? child;
  final double? height;
  final double? width;
  final Color? color;
  final double borderRadius;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    //widgetın görsele dönüştürüldüğü yer
    final colors = context.colorScheme;

    return Container(
      height: height,
      width: width,
      padding: padding, //iç boşluk
      decoration: BoxDecoration(
        //kapsayıcıyı şekillendirme
        color: color ?? colors.primaryContainer, //kapsayıcı rengi
        borderRadius: BorderRadius.circular(borderRadius), //kenar yuvarlaklığı
      ),
      child: child, //kapsayıcı içindeki widget
    );
  }
}
