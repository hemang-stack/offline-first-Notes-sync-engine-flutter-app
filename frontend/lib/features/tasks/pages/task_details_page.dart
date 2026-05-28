import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';

class TaskDetailsPage extends StatelessWidget {
  TaskDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
          AppColors.background,

      body: SafeArea(
        child: ListView(
          padding:
              const EdgeInsets.symmetric(
            horizontal:
                AppSpacing.lg,
            vertical: 20,
          ),

          children: [

            /// TOP BAR
            Row(
              children: [

                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },

                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 20),

                const Text(
                  "curator",

                  style: TextStyle(
                    color: Colors.white,

                    fontSize: 26,

                    fontWeight:
                        FontWeight.w700,
                  ),
                ),

                const Spacer(),

                Container(
                  width: 44,
                  height: 44,

                  decoration:
                      const BoxDecoration(
                    shape: BoxShape.circle,

                    color:
                        Color(0xFF1A1A1A),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            /// IMAGE
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(
                30,
              ),

              child: Image.network(
                "https://images.unsplash.com/photo-1511818966892-d7d671e672a2",

                height: 300,

                fit: BoxFit.cover,

                errorBuilder:
                    (
                      context,
                      error,
                      stackTrace,
                    ) {

                  return Container(
                    height: 300,

                    color:
                        const Color(
                      0xFF1A1A1A,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 40),

            /// PRIORITY
            _card(
              title: "priority",
              value: "critical path",
            ),

            const SizedBox(height: 20),

            /// CATEGORY
            _card(
              title: "category",
              value:
                  "technical design",
            ),

            const SizedBox(height: 20),

            /// DATE
            Container(
              padding:
                  const EdgeInsets.all(
                28,
              ),

              decoration: BoxDecoration(
                color:
                    const Color(
                  0xFF111111,
                ),

                borderRadius:
                    BorderRadius.circular(
                  30,
                ),

                border: Border.all(
                  color:
                      Colors.white10,
                ),
              ),

              child: Row(
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,

                      children: [

                        Text(
                          "DUE DATE",

                          style: TextStyle(
                            color:
                                Colors.white
                                    .withOpacity(
                              .4,
                            ),

                            letterSpacing:
                                4,

                            fontSize:
                                10,
                          ),
                        ),

                        const SizedBox(
                            height: 22),

                        const Text(
                          "24 oct 2024",

                          style:
                              TextStyle(
                            color:
                                Colors
                                    .white,

                            fontSize:
                                24,

                            fontWeight:
                                FontWeight
                                    .w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  _circleButton(
                    Icons.share_outlined,
                  ),

                  const SizedBox(
                      width: 16),

                  _circleButton(
                    Icons.edit_outlined,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 36),

            /// BUTTON
            SizedBox(
              height: 70,

              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(
                  backgroundColor:
                      AppColors.primary,

                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius
                            .circular(
                      999,
                    ),
                  ),
                ),

                onPressed: () {

                  Navigator.pop(
                    context,
                    true,
                  );
                },

                child: const Text(
                  "mark as done",

                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 20,

                    fontWeight:
                        FontWeight.w700,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            /// DESCRIPTION
            Text(
              "Revisit the spatial hierarchy and modernize the interaction design against the revised sustainability guidelines.",

              style: TextStyle(
                color:
                    Colors.white
                        .withOpacity(.8),

                height: 1.8,

                fontSize: 18,
              ),
            ),

            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }

  Widget _card({
    required String title,
    required String value,
  }) {

    return Container(
      padding:
          const EdgeInsets.all(28),

      decoration: BoxDecoration(
        color:
            const Color(0xFF111111),

        borderRadius:
            BorderRadius.circular(
          30,
        ),

        border: Border.all(
          color: Colors.white10,
        ),
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Text(
            title.toUpperCase(),

            style: TextStyle(
              color:
                  Colors.white
                      .withOpacity(.4),

              letterSpacing: 4,

              fontSize: 10,
            ),
          ),

          const SizedBox(height: 22),

          Text(
            value,

            style: const TextStyle(
              color: Colors.white,

              fontSize: 24,

              fontWeight:
                  FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _circleButton(
    IconData icon,
  ) {

    return Container(
      width: 72,
      height: 72,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color:
            Colors.white.withOpacity(
          .08,
        ),
      ),

      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}