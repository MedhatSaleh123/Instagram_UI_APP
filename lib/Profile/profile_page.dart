import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  Icons.menu,
                  size: 30,
                ),
              ),
            ],
            title: Row(
              children: [
                const Icon(color: Colors.white, Icons.lock_outline_rounded),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Medhat Saleh",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 5,
                ),
                Transform.rotate(
                  angle: -0.785 * 2,
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(color: Colors.white, Icons.arrow_back_ios)),
                )
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NumberOfPosts(),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "Medhat Saleh",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              EditProfile(),
              Story(),
            ],
          ),
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/cr7.jpg'),
                ),
              ),
              Text("Medhat")
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  child: Icon(Icons.add),
                  backgroundColor: Colors.black,
                ),
              ),
              Text("New")
            ],
          ),
        ],
      ),
    );
  }
}

class EditProfile extends StatelessWidget {
  const EditProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(7.0),
              ),
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(
                  horizontal: 90), // Background color
            ),
            onPressed: () {},
            child: const Text(
              "Edit Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(7.0),
              ),
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(
                  horizontal: 11), // Background color
            ),
            onPressed: () {},
            child: const Icon(
              Icons.person_add_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class NumberOfPosts extends StatelessWidget {
  const NumberOfPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/cr7.jpg'),
        ),
        Column(
          children: [
            Text(
              '987',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Posts",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        Column(
          children: [
            Text(
              '4576',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Followers",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        Column(
          children: [
            Text(
              '9876',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Following",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ],
    );
  }
}
