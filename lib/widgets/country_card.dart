import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryCard extends StatelessWidget {
  final Map<String, dynamic> country;

  const CountryCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return Card(
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              // Flag Image
              Expanded(
                flex: 3,
                child: Image.network(
                  country["flag"],
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Content Section
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(width * 0.06),
                  child: Column(
                    spacing: height * 0.005,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        country["name"],
                        style: TextStyle(
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Description
                      Text(
                        country["description"],
                        style: TextStyle(fontSize: width * 0.05),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),

                      SizedBox(
                        width: double.infinity,
                        height: height * 0.14,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward, size: width * 0.06),
                          label: Text(
                            'Explore More',
                            style: TextStyle(fontSize: width * 0.05),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade100,
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
