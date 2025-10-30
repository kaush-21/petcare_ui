import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/petcare.png",
                    height: 280,
                    width: double.infinity,
                    fit: BoxFit.cover
                  ),
              
                  Positioned(
                    top: 40,
                    left: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back, color: Colors.black, size: 20),
                      ),
                    ),
                  ),
              
                  Positioned(
                    top: 40,
                    right: 16,
                    child: CircleAvatar(
                      backgroundColor:Color.fromRGBO(255, 229, 80, 1),
                      child: Image.asset(
                        "assets/icons/edit.png",
                        color: Colors.black,
                        height: 22,
                        width: 22,
                        )
                    ),
                  ),
                ],
              ),
            ),
            
            Positioned(
              top: 250,
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                    color:Color.fromRGBO(248, 248, 248, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color:Color.fromRGBO(248, 248, 248, 1),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color:Color.fromRGBO(248, 248, 248, 1),
                                ),
                                child: Text(
                                  "PawPrints",
                                  style: GoogleFonts.poppins(
                                    color:Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color:Color.fromRGBO(255, 229, 80, 1),
                                ),
                                child: Text(
                                  "Night Stay",
                                  style: GoogleFonts.poppins(
                                    color:Color.fromRGBO(27, 26, 26, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color:Color.fromRGBO(248, 248, 248, 1),
                                ),
                                child: Text(
                                  "Customers",
                                  style: GoogleFonts.poppins(
                                    color:Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 20),
                      
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),

                          border: Border.all(
                            color: Colors.grey
                          ),
                          color:Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 229, 80, 1),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Image.asset("assets/icons/stethoscope.png",),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Day Care",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                        )
                                      ),
                                      Text(
                                        "Offer daytime care services for pets",
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontSize: 11
                                        )
                                      )
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor:Color.fromRGBO(6, 154, 118, 1),
                                  radius: 12,
                                  child: Icon(Icons.check, color: Colors.white, size: 18),
                                )
                              ],
                            ),
                            
                            SizedBox(height: 24),
                            
                            Text(
                              "What's included in your price?",
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                              )
                            ),
                            
                            SizedBox(height: 12),
                            
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: [
                                buttons("Give Medicines"),
                                buttons("Feeding"),
                                buttons("Bath & Dry"),
                                buttons("Out Door Walks"),
                                buttons("Massage"),
                                buttons("Training"),
                                buttons("Bath"),
                                buttons("Grooming"),
                                buttons("Video Call"),
                              ],
                            ),
                            
                            SizedBox(height: 24),
                            
                            Text(
                              "What is your price per night?",
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                              )
                            ),
                            
                            SizedBox(height: 16),
                            
                            // Price rows
                            priceRow("Price Per Night *", "14",isBold: true),
                            SizedBox(height: 12),
                            priceRow("Pawfront Fees & Taxes", "2"),
                            SizedBox(height: 12),
                            priceRow("You Will Receive", "12"),
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 8,
          selectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
          unselectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,size: 24,),
              activeIcon: Icon(Icons.home, size: 24),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/sitter.jpg",height: 24,width: 24,),
              activeIcon: Image.asset("assets/icons/sitter.jpg",height: 24,width: 24,),
              label: 'Sitter'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined, size: 24),
              activeIcon: Icon(Icons.calendar_today, size: 24),
              label: 'Agenda'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined, size: 24),
              activeIcon: Icon(Icons.account_balance_wallet, size: 24),
              label: "Earning"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline, size: 24),
              activeIcon: Icon(Icons.chat_bubble, size: 24),
              label: 'Chats'
            )
          ] 
        )
      ),
    );
  }

  Widget buttons(String text){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(255, 229, 80, 1),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color:Color.fromRGBO(27, 26, 26, 1),
          fontSize: 12,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
  
Widget priceRow(String label, String value, {bool isBold = false}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 14,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w500
          )
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey.shade300, width: 1)
          ),
          child: Row(
            children: [
              Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                )
              ),
              SizedBox(width: 8),
              Text(
                "CHF",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500
                )
              ),
            ],
          ),
        )
      ],
    );
  }
}