import 'package:flutter/material.dart';

class Learn_Bayani extends StatefulWidget {
  final String passedName;
  final String passedFullName;
  final String passedBirthDate;
  final String passedDeathDate;
  final String passedDescription;
  final String passedProfileImage;
  final String passedCoverImage;
//dinagdag
  const Learn_Bayani(
      {Key? key,
      required this.passedName,
      required this.passedFullName,
      required this.passedBirthDate,
      required this.passedDeathDate,
      required this.passedDescription,
      required this.passedProfileImage,
      required this.passedCoverImage})
      : super(key: key);
  // const Learn_Bayani({super.key});

  @override
  State<Learn_Bayani> createState() => _Learn_BayaniState();
}

class _Learn_BayaniState extends State<Learn_Bayani> {
  final double coverHeight = 250;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    final belowProfile = profileHeight * 2.2;
    //final String value;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          buildBackground(),
          Align(
              alignment: AlignmentDirectional.topStart,
              child: buildCoverImage()),
          Positioned(top: top, child: buildProfileImage()),
          Positioned(top: belowProfile, child: buildContent()),
          Positioned(top: coverHeight / 4, left: 15, child: buildBackButton()),
        ],
      ),
    );
  }

  Widget buildBackButton() => CircleAvatar(
      backgroundColor: Color.fromARGB(174, 0, 0, 0),
      child: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ));

  Widget buildCoverImage() => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(0, 1),
              color: Colors.black.withOpacity(0.9),
            )
          ],
        ),
        child: Image.asset(
          '${widget.passedCoverImage}',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
          color: Colors.black45,
          colorBlendMode: BlendMode.darken,
        ),
      );

  Widget buildProfileImage() => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 5,
              color: Colors.black.withOpacity(0.9),
            )
          ],
        ),
        child: CircleAvatar(
          radius: profileHeight / 2 - 6,
          backgroundImage: AssetImage('${widget.passedProfileImage}'),
        ),
      );

  Widget buildBackground() => Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)),
      );

  Widget buildContent() => Container(
        child: Column(
          children: [
            Text(
              '${widget.passedName}',
              style: TextStyle(fontSize: 40, fontFamily: 'Poppins-SemiBold'),
            ),
            Text(
              "${widget.passedFullName}",
              style: TextStyle(
                fontSize: 11,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${widget.passedBirthDate}",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              "${widget.passedDeathDate}",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                  height: MediaQuery.of(context).size.height - 550,
                  width: MediaQuery.of(context).size.width - 30,
                  color: Color.fromARGB(1000, 92, 76, 54),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "${widget.passedDescription}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  )),
            )
          ],
        ),
      );
}
