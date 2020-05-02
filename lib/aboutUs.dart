import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.redAccent,
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: ContactUsBottomAppBar(
            companyName: 'Ali Karani',
            textColor: Colors.white,
            backgroundColor: Colors.teal.shade300,
            email: 'aliasgharkarani125@hotmail.com',
          ),
          backgroundColor: Colors.teal.shade300,
          body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            logo: AssetImage('assets/riya.jpeg'),
            email: 'riaapatel1711@gmail.com',
            companyName: 'Riya Patel',
            companyColor: Colors.teal.shade50,
            website: 'https://medium.com/@gdsc',
            githubUserName: 'iamriya',
            linkedinURL: 'https://www.linkedin.com/in/iamriya/',
            tagLine: 'Flutter Developer',
            taglineColor: Colors.amber.shade50,
            twitterHandle: 'riyapatelJ',
          ),
        ),
      ),
    );
  }
}
