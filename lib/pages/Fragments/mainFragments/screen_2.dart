import 'package:flutter/material.dart';
import 'package:kushi_3/model/globals.dart' as globals;
import 'package:kushi_3/components/settingButtons.dart';
import 'package:kushi_3/service/auth/auth_service.dart';


class Screen_2 extends StatefulWidget {
  String namey;
  Screen_2({required this.namey, super.key});

  @override
  State<Screen_2> createState() => _profilePageState();
}

class _profilePageState extends State<Screen_2> {
  late String name;
  @override
  void initState() {
    super.initState();
    name = widget.namey; // Accessing namey from the widget instance
  }

  // Future<void> signOut() async {
  //   final _authService = Provider.of<AuthService>(context,listen:false);
  //   _authService.signOut();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              const SizedBox(height: 60, ),
              const Padding(
                padding: EdgeInsets.only(right: 240.0),
                child: Text("Profile", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 25, ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Stack(

                        children: <Widget>[
                          Container(
                            width: 140, // Adjust according to your needs
                            height: 140, // Adjust according to your needs
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.lightBlueAccent], // Example gradient colors
                                  begin: Alignment.topRight, // Example gradient begin alignment
                                  end: Alignment.bottomLeft,
                                  stops: [0.2, 0.8]// Example gradient end alignment
                              ), // Change color according to your needs
                            ),
                          ),
                          // Square profile image
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Container(
                              width: 120, // Adjust according to your needs
                              height: 120, // Adjust according to your needs
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 15.0), // Circular border
                              ),
                              child: ClipOval(
                                child: Image.asset("assets/sujal.png",
                                    width: 150, // Adjust according to your needs
                                    height: 150, // Adjust according to your needs
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 75,),
                      const VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 50.0, left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Joined"),
                              Text("2 months ago", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text(globals.userName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
                  )
              ),
              const SizedBox(height: 10,),
              settingButton(
                  text: "Edit profile",
                  onTap: () => () {}
              ),
              const SizedBox(height: 10,),
              settingButton(
                  text: "Privacy profile",
                  onTap: () => () {}
              ),
              const SizedBox(height: 10,),
              settingButton(
                  text: "Settings",
                  onTap: () => () {}
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: OutlinedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.white,
                      elevation: 10,
                      side: const BorderSide(
                          color: Colors.black12,
                          width: 1.5
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:16.0, right: 140),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  "Pro",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16, // Adjust as needed
                                  ),
                                ),
                              ),
                            ),


                            const Text(
                              "Upgrade to premium",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "This subscription is auto-renewable",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(

                            padding: const EdgeInsets.only(bottom: 5),

                            minimumSize: const Size(48, 48),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            ">",
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                        ),
                      ],
                    )
                ),
              ),
              const SizedBox(height: 10,),
              settingButton(
                text: "Sign out",
                onTap: (){
                  final authService = AuthService();
                  authService.signOut();},
              ),

            ]
        ),
      ),
    );
  }
}
