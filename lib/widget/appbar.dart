import 'package:flutter/material.dart';
import 'package:portofolio/constant/color.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(127);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Padding(
          // padding: const EdgeInsets.all(0),
          padding: const EdgeInsets.symmetric(horizontal: 300),
          child: AppBar(
            toolbarHeight: 127,
            backgroundColor: Colors.transparent,

            // title
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  "HHawari",
                  style: TextStyle(
                      fontSize: 24,
                      color: ColorsApp.textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // action
            actions: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  "Home",
                  style: TextStyle(fontSize: 16, color: ColorsApp.textColor),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  "Portofolio",
                  style: TextStyle(fontSize: 16, color: ColorsApp.textColor),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  "Snippset",
                  style: TextStyle(fontSize: 16, color: ColorsApp.textColor),
                ),
              ),
            ],

            // line
            bottom: PreferredSize(
              preferredSize: preferredSize,
              child: const Divider(
                thickness: 0.5,
                color: ColorsApp.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
