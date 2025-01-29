import 'package:bayanilearn/Learn_Bayani.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LearnApp());
}

class LearnApp extends StatelessWidget {
  const LearnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BayaniLearn',
      debugShowCheckedModeBanner: false,
      home: LearnHome(),
    );
  }
}

class LearnHome extends StatelessWidget {
  Widget build(BuildContext context) {
    String value = 'Hello';
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Color.fromARGB(255, 226, 203, 133),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Learn_Bayani(
                        passedName: 'Jose Rizal',
                        passedFullName:
                            'Full Name: José Protacio Rizal Mercado y Alonso Realonda',
                        passedBirthDate: 'Born on: June 19, 1861',
                        passedDeathDate: 'Died on: December 30, 1896',
                        passedDescription:
                            'José Rizal, in full José Protasio Rizal Mercado y Alonso Realonda, (born June 19, 1861, Calamba, Philippines—died December 30, 1896, Manila), patriot, physician, and man of letters who was an inspiration to the Philippine nationalist movement.',
                        passedProfileImage: 'assets/images/rizal.jpg',
                        passedCoverImage: 'assets/images/cover_rizal.jpg',
                      ),
                    ),
                  );
                },
                child:
                    Text("Jose Rizal", style: TextStyle(color: Colors.black)),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Learn_Bayani(
                        passedName: 'Andres Bonifacio',
                        passedFullName:
                            'Full Name: Andrés Bonifacio y de Castro',
                        passedBirthDate: 'Born on: November 30, 1863',
                        passedDeathDate: 'Died on: May 10, 1897',
                        passedDescription:
                            'Andrés Bonifacio y de Castro was a Filipino Freemason and revolutionary leader. He is often called "The Father of the Philippine Revolution", and considered one of the national heroes of the Philippines.',
                        passedProfileImage: 'assets/images/bonifacio.jpg',
                        passedCoverImage: 'assets/images/cover_bonifacio.jpg',
                      ),
                    ),
                  );
                },
                child: Text("Andres Bonifacio",
                    style: TextStyle(color: Colors.black)),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Learn_Bayani(
                        passedName: 'Apolinario Mabini',
                        passedFullName:
                            'Full Name: Apolinario Mabini y Maranan',
                        passedBirthDate: 'Born on: Ju1y 23, 1864',
                        passedDeathDate: 'Died on: May 13, 1903',
                        passedDescription:
                            'Apolinario Mabini, Filipino theoretician and spokesman of the Philippine Revolution, who wrote the constitution for the short-lived republic of 1898–99.',
                        passedProfileImage: 'assets/images/mabini.jpg',
                        passedCoverImage: 'assets/images/cover_mabini.jpg',
                      ),
                    ),
                  );
                },
                child: Text("Apolinario Mabini",
                    style: TextStyle(color: Colors.black)),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Learn_Bayani(
                        passedName: 'Tandang Sora',
                        passedFullName: 'Full Name: Melchora Aquino de Ramos',
                        passedBirthDate: 'Born on: January 6, 1812',
                        passedDeathDate: 'Died on: February 19, 1919',
                        passedDescription:
                            'Melchora Aquino de Ramos was a Filipino revolutionary. She became known as "Tandang Sora" because of her age during the Philippine Revolution. She was known as the "Grand Woman of the Revolution" and the "Mother of Balintawak" for her contributions.',
                        passedProfileImage: 'assets/images/aquino.jpg',
                        passedCoverImage: 'assets/images/cover_aquino.jpg',
                      ),
                    ),
                  );
                },
                child:
                    Text("Tandang Sora", style: TextStyle(color: Colors.black)),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Learn_Bayani(
                        passedName: 'Emilio Aguinaldo',
                        passedFullName: 'Full Name: Emilio Aguinaldo y Famy',
                        passedBirthDate: 'Born on: March 22, 1869',
                        passedDeathDate: 'Died on: February 6, 1964',
                        passedDescription:
                            'Emilio Aguinaldo, Filipino leader and politician who fought first against Spain and later against the United States for the independence of the Philippines.',
                        passedProfileImage: 'assets/images/aguinaldo.jpg',
                        passedCoverImage: 'assets/images/cover_aguinaldo.jpg',
                      ),
                    ),
                  );
                },
                child: Text("Emilio Aguinaldo",
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ));
  }
}
