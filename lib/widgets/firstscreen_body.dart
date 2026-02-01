import 'package:firstapp/widgets/custom_button.dart';
import 'package:firstapp/widgets/custom_choice.dart';
import 'package:firstapp/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class FirstScreenBody extends StatelessWidget {
  const FirstScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 160,
                  height: 160,
                  child: ClipOval(
                    child: Image.asset('assets/images/doctor.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. John Simpson',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 105, 2, 249),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Cardiology Specialist",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(width: 2),
                        Text("4.8"),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        CustomChoice(txt: '1', ontap: () {}),
                        SizedBox(width: 10),
                        CustomChoice(txt: '2', ontap: () {}),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 5),
                  child: Text(
                    'About',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 5),
                  child: Text(
                    'Professor of Cardial special - Former Head Department of Cardial special, Ain Shams University.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(left: 15, right: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 223, 250),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  CustomRow(
                    icon: Icon(Icons.local_hospital_rounded),
                    txtcomment: "Cleopatra Hospital",
                  ),
                  SizedBox(height: 10),
                  CustomRow(
                    icon: Icon(Icons.access_time),
                    txtcomment: '10 - 19',
                  ),
                  SizedBox(height: 10),
                  CustomRow(
                    icon: Icon(Icons.edit_location),
                    txtcomment: "16 Al-Khalifa Al-Maamoun St., Cairo",
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(
              indent: 15,
              endIndent: 10,
              color: Colors.black,
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 5),
              child: Text(
                'Contact Info',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(left: 15, right: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 223, 250),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  CustomRow(
                    icon: Icon(Icons.email),
                    txtcomment: "j.simpson@gmail.com",
                  ),
                  SizedBox(height: 15),
                  CustomRow(icon: Icon(Icons.call), txtcomment: '01012345678'),
                  SizedBox(height: 15),
                  CustomRow(icon: Icon(Icons.call), txtcomment: "01287654321"),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 15),
            CustomButton(
              buttonText: "Chat with Dr. Simpson",
              color: const Color.fromARGB(255, 100, 203, 16),
              ontap: () {},
            ),
            SizedBox(height: 10),
            CustomButton(
              buttonText: "Book an appointment",
              color: Colors.blueAccent,
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
