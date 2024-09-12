import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 22,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 26,
              ))
        ],
      ),
    );
  }
}
