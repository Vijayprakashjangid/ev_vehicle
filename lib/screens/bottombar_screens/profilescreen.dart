import 'package:ev_vehicle/utils/color.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
            child: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        )),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          color: Colors.white54,
          child: Column(
            children: [
              Container(
                child: Expanded(
                    child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: AssetImage("assets/img/pr1.jpg"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Thomas Shelby",
                          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("shelby123@gmail.com")],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/profilesetting');
                      },
                      child: Card(
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.car_rental,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Car Details',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.privacy_tip_sharp,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Privacy',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.history,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Purchase History',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(Icons.help_outline, color: Colors.black54),
                        title: Text(
                          'Help & Support',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.privacy_tip_sharp,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.add_reaction_sharp,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Invite a Friend',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
