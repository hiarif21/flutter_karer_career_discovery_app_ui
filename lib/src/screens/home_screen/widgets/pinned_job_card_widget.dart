import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:karer/src/screens/detail_screen/detail_screen.dart';
import 'package:karer/src/styles/colors_app.dart';

class PinnedJobCardWidget extends StatelessWidget {
  const PinnedJobCardWidget({
    super.key,
    required this.companyLogo,
    required this.companyName,
    required this.companyLocation,
    required this.jobName,
    required this.salaryRange,
    required this.jobType,
    this.marked = false,
  });

  final String companyLogo;
  final String companyName;
  final String companyLocation;
  final String jobName;
  final String salaryRange;
  final String jobType;

  final bool? marked;

  @override
  Widget build(BuildContext context) {
    final bool darkMode = Theme.of(context).brightness == Brightness.dark;

    Color cardColor;
    Color cardBorderColor;
    Color imageBorderColor;
    Color primaryTextColor;
    Color secondaryTextColor;
    Color jobTypeBackgroundColor;
    Color jobTypeForegroundColor;

    if (marked == true) {
      cardColor = ColorsApp.primary700;
      cardBorderColor = ColorsApp.primary700;
      imageBorderColor = ColorsApp.primary700;
      primaryTextColor = ColorsApp.white;
      secondaryTextColor = ColorsApp.gray300;
      jobTypeBackgroundColor = ColorsApp.primary600;
      jobTypeForegroundColor = ColorsApp.white;
    } else {
      cardColor = darkMode ? ColorsApp.background500 : ColorsApp.white;
      imageBorderColor = ColorsApp.gray100;
      cardBorderColor = darkMode ? ColorsApp.gray700 : ColorsApp.gray300;
      primaryTextColor = darkMode ? ColorsApp.white : ColorsApp.black;
      secondaryTextColor = ColorsApp.gray500;
      jobTypeBackgroundColor = darkMode ? ColorsApp.gray800 : ColorsApp.gray100;
      jobTypeForegroundColor = ColorsApp.gray500;
    }

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const DetailScreen(),
        ),
      ),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: cardBorderColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: imageBorderColor,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    companyLogo,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      companyName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      companyLocation,
                      style: TextStyle(
                        fontSize: 14,
                        color: secondaryTextColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                HeroIcon(
                  HeroIcons.heart,
                  size: 24,
                  color: secondaryTextColor,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              jobName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              salaryRange,
              style: TextStyle(
                fontSize: 14,
                color: secondaryTextColor,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: jobTypeBackgroundColor,
              ),
              child: Text(
                jobType,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: jobTypeForegroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
