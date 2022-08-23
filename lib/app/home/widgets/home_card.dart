import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const HomeCard({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topRight,
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.white.withOpacity(0.1),
            const Color.fromARGB(0, 255, 255, 255),
          ],
          stops: const [0, 0.3, 1],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: Image.asset(
                  imageUrl,
                  width: 60,
                )),
            const SizedBox(width: 20),
            Flexible(
              flex: 3,
              child: Text(
                title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.jost(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 25,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
