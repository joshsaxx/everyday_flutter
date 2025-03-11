import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileUIScreen extends StatelessWidget {
  const ProfileUIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            const Positioned(
              top: 50,
              left: 20,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
            const Positioned(
              top: 50,
              right: 20,
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("John Doe",
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                    Text(
                      "johndoe@gmail.com",
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[400],
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      height: 50,
                      width: 500,
                      child: Center(
                        child: Text(
                          "Upgrade to Premium",
                          style: GoogleFonts.lato(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      text: "Your order history",
                      icon: Icons.shopping_bag_outlined,
                      arrowShown: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      text: "Help and support",
                      icon: Icons.help_outline,
                      arrowShown: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      text: "Load gift voucher",
                      icon: Icons.card_giftcard,
                      arrowShown: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileMenuItem(
                      text: "Logout",
                      icon: Icons.logout,
                      arrowShown: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool arrowShown;

  const ProfileMenuItem({
    required this.text,
    required this.icon,
    required this.arrowShown,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      height: 50,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          arrowShown
              ? const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
