import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionWidget extends StatelessWidget {
  const PromotionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.orange),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 22,
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "September's\nbest deals are here",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.orange),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Claim now",
                      style:
                          TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}