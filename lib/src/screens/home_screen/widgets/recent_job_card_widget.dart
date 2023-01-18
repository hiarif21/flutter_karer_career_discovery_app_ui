import 'package:flutter/material.dart';
import 'package:karer/src/screens/detail_screen/detail_screen.dart';
import 'package:karer/src/styles/colors_app.dart';

class RecentJobCardWidget extends StatelessWidget {
  const RecentJobCardWidget({
    super.key,
    required this.companyLogo,
    required this.companyName,
    required this.companyLocation,
    required this.jobName,
    required this.salaryRange,
    required this.jobType,
    required this.postDate,
  });

  final String companyLogo;
  final String companyName;
  final String companyLocation;
  final String jobName;
  final String salaryRange;
  final String jobType;
  final String postDate;

  @override
  Widget build(BuildContext context) {
    final bool darkMode = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const DetailScreen(),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: darkMode ? ColorsApp.background500 : ColorsApp.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: darkMode
                  ? ColorsApp.white.withOpacity(0.05)
                  : ColorsApp.black.withOpacity(0.05),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ColorsApp.gray100,
                  strokeAlign: StrokeAlign.outside,
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                companyLogo,
                height: 88,
                width: 88,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    decoration: BoxDecoration(
                      color: darkMode ? ColorsApp.gray800 : ColorsApp.gray100,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      jobType,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: ColorsApp.gray500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    jobName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: darkMode ? ColorsApp.white : ColorsApp.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "$companyName - $companyLocation",
                    style: const TextStyle(
                      fontSize: 12,
                      color: ColorsApp.gray500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        salaryRange,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: ColorsApp.gray500,
                        ),
                      ),
                      Text(
                        postDate,
                        style: const TextStyle(
                          fontSize: 10,
                          color: ColorsApp.gray500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
