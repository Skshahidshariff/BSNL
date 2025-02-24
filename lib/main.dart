import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Afternoon, Prasad TNVD",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text("123456789", style: TextStyle(fontSize: 14)),
                SizedBox(width: 6),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("Prepaid",
                      style: TextStyle(color: Colors.orange, fontSize: 12)),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // Pack Expired Card
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text("0 Pack", style: TextStyle(fontSize: 20)),
                      Text("Expired", style: TextStyle(color: Colors.red)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            child: Text("Recharge"),
                          ),
                          SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text("View Pack"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Recharge Warning
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.red),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text("Uh-oh! Your plan has expired. Recharge now.",
                          style: TextStyle(color: Colors.red)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Recharge", style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Offer Banner
              Container(height: 180,
                width: 350,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text("App Exclusive Offer", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("Applicable on recharges above Rs 249."),
                    SizedBox(height: 5),
                    Text("Get 2% OFF", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orangeAccent)),
                    TextButton(
                      onPressed: () {},
                      child: Text("Check Now"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Quick Actions Grid
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Quick Actions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),

              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                childAspectRatio: 1,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  quickActionIcon(Icons.refresh, "Recharge"),
                  quickActionIcon(Icons.payment, "Pay Bill"),
                  quickActionIcon(Icons.call, "Landline"),
                  quickActionIcon(Icons.wifi, "Book Fiber"),
                  quickActionIcon(Icons.sim_card, "Upgrade to 4G ", isNew: true),
                  quickActionIcon(Icons.phone, "ChooseNumber "),
                  quickActionIcon(Icons.do_not_disturb, "Do Not Disturb"),
                  quickActionIcon(Icons.gamepad, "Games"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Quick Action Icon Widget
  Widget quickActionIcon(IconData icon, String title, {bool isNew = false}) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 28,
              child: Icon(icon, color: Colors.black),
            ),
            if (isNew)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("New", style: TextStyle(fontSize: 10, color: Colors.white)),
                ),
              ),
          ],
        ),
        SizedBox(height: 6),
        Text(title, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}