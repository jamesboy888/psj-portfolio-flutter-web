import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PsjPortfolioPageNavbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    ///
    ///
    /// === [STATE] ===
    ///
    ///
    final isLogoHovered = false.obs;
    final isHomeHovered = false.obs;
    final isAboutHovered = false.obs;
    final isEducationHovered = false.obs;
    final isExperienceHovered = false.obs;
    final isSkillsHovered = false.obs;
    final isContactHovered = false.obs;

    ///
    ///
    /// === [COMPONENTS]===
    ///
    ///
    Widget _navbarButton({
      required Function(bool value) onHover,
      required Function(bool value) onExit,
      required Function() onPress,
      required String title,
      required TextStyle styleText,
    }) {
      return MouseRegion(
        onHover: (event) => onHover(true),
        onExit: (event) => onExit(false),
        child: TextButton(
          onPressed: onPress,
          style: ButtonStyle(
            mouseCursor: MaterialStateMouseCursor.clickable,
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            overlayColor: MaterialStateProperty.resolveWith((states) => Colors.transparent),
          ),
          child: Text(title, style: styleText),
        ),
      );
    }

    return AppBar(
      backgroundColor: Color(0xff1f1f1f),
      flexibleSpace: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(200, 0, 200, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => _navbarButton(
                  title: 'PSJ',
                  styleText: TextStyle(
                    color: isLogoHovered.value == true ? Colors.amber : Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  onHover: (event) => isLogoHovered.value = event,
                  onExit: (event) => isLogoHovered.value = event,
                  onPress: () {},
                )),
            Row(
              children: [
                Obx(() => _navbarButton(
                      title: 'Home',
                      styleText: TextStyle(
                        color: isHomeHovered.value == true ? Colors.amber : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      onHover: (event) => isHomeHovered.value = event,
                      onExit: (event) => isHomeHovered.value = event,
                      onPress: () {},
                    )),
                const SizedBox(width: 20),
                Obx(() => _navbarButton(
                      title: 'About',
                      styleText: TextStyle(
                        color: isAboutHovered.value == true ? Colors.amber : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      onHover: (event) => isAboutHovered.value = event,
                      onExit: (event) => isAboutHovered.value = event,
                      onPress: () {},
                    )),
                const SizedBox(width: 20),
                Obx(() => _navbarButton(
                      title: 'Education',
                      styleText: TextStyle(
                        color: isEducationHovered.value == true ? Colors.amber : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      onHover: (event) => isEducationHovered.value = event,
                      onExit: (event) => isEducationHovered.value = event,
                      onPress: () {},
                    )),
                const SizedBox(width: 20),
                Obx(() => _navbarButton(
                      title: 'Experience',
                      styleText: TextStyle(
                        color: isExperienceHovered.value == true ? Colors.amber : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      onHover: (event) => isExperienceHovered.value = event,
                      onExit: (event) => isExperienceHovered.value = event,
                      onPress: () {},
                    )),
                const SizedBox(width: 20),
                Obx(() => _navbarButton(
                      title: 'Skills',
                      styleText: TextStyle(
                        color: isSkillsHovered.value == true ? Colors.amber : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      onHover: (event) => isSkillsHovered.value = event,
                      onExit: (event) => isSkillsHovered.value = event,
                      onPress: () {},
                    )),
                const SizedBox(width: 20),
                Obx(() => _navbarButton(
                      title: 'Contact',
                      styleText: TextStyle(
                        color: isContactHovered.value == true ? Colors.amber : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      onHover: (event) => isContactHovered.value = event,
                      onExit: (event) => isContactHovered.value = event,
                      onPress: () {},
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(76);
}
