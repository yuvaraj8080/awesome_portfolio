// _GridViewItem widget
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/current_state.dart';
import '../providers/theme_provider.dart';

class GridViewItem extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String url;

  GridViewItem({required this.imageUrl, required this.label, required this.url});

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);
    CurrentState currentState = Provider.of<CurrentState>(context, listen: false);


    return GestureDetector(
      onTap: () {
        currentState.launchInBrowser(url);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50 * theme.widthRatio * theme.heightRatio,
            height: 50 * theme.widthRatio * theme.heightRatio,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10 * theme.heightRatio),
          Flexible(
            child: AutoSizeText(
              label,
              style: GoogleFonts.exo(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18 * theme.widthRatio * theme.heightRatio,
              ),
              textAlign: TextAlign.center,
              maxFontSize: 18,
              minFontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}