import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Colors.green[800]!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 350,
            child: Image.asset(
              'assets/khaoyai.jpg',
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildGlassButton(Icons.arrow_back_ios_new, () {}),
                _buildGlassButton(Icons.favorite_border, () {}),
              ],
            ),
          ),

          Positioned.fill(
            top: 300,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(35)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, -5),
                  )
                ],
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(25, 35, 25, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                'อุทยานแห่งชาติเขาใหญ่',
                                style: GoogleFonts.kanit(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28,
                                    color: Colors.grey[900],
                                    height: 1.2,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.location_on_rounded, size: 18, color: primaryColor),
                                  const SizedBox(width: 5),
                                  Text(
                                    'ปากช่อง, นครราชสีมา',
                                    style: GoogleFonts.kanit(
                                      textStyle: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.orange[50],
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.orange.withOpacity(0.1)),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.star_rounded, color: Colors.orange, size: 22),
                              const SizedBox(width: 4),
                              Text(
                                '4.9',
                                style: GoogleFonts.kanit(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Colors.orange
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // --- Facilities ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFacilityItem(Icons.forest_rounded, "Nature", Colors.green),
                        _buildFacilityItem(Icons.hiking_rounded, "Hiking", Colors.brown),
                        _buildFacilityItem(Icons.camera_alt_rounded, "Photo", Colors.blue),
                        _buildFacilityItem(Icons.room_outlined, "Location", Colors.grey),
                      ],
                    ),

                    const SizedBox(height: 30),
                    Divider(color: Colors.grey[200], thickness: 1.5),
                    const SizedBox(height: 20),

                    // --- Description ---
                    Text(
                      "About Location",
                      style: GoogleFonts.kanit(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'เขาใหญ่ เป็นอุทยานแห่งชาติแห่งแรกของประเทศไทย เป็นพื้นที่ป่าผืนใหญ่ตั้งอยู่ในเทือกเขาสันกำแพง มีความต่อเนื่องจากเทือกเขาดงพญาเย็นหรือดงพญาไฟในอดีต ประกอบด้วยขุนเขาน้อยใหญ่สลับซับซ้อนหลายลูก เป็นแหล่งกำเนิดของต้นน้ำลำธารที่สำคัญหลายสาย เช่น แม่น้ำนครนายก และแม่น้ำมูล อุดมสมบูรณ์ไปด้วยพันธุ์ไม้และสัตว์ป่านานาชนิด เช่น ช้างป่า กวางป่า เก้ง กระทิง เสือ ตลอดจนมีลักษณะทางธรรมชาติที่สวยงาม',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                          fontSize: 15,
                          height: 1.8,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGlassButton(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withOpacity(0.4), width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Icon(icon, color: Colors.white, size: 22),
      ),
    );
  }

  Widget _buildFacilityItem(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color.withOpacity(0.08),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: color, size: 30),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: GoogleFonts.kanit(
            textStyle: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ],
    );
  }
}