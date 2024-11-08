import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  // Couleur personnalisée utilisée dans la page de connexion
  final Color greenColor = const Color(0xFF9BE4AF);
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Logo en haut de l'écran
            Image.asset(
              'assets/logo1.png', // Assurez-vous que le logo est dans ce chemin
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),

            // Titre de la page d'inscription
            Text(
              "Create Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: greenColor,
              ),
            ),
            SizedBox(height: 10),

            // Sous-titre
            Text(
              "Please fill in the details to sign up",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30),

            // Champ Nom
            TextField(
              decoration: InputDecoration(
                labelText: "Nom",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Champ Prénom
            TextField(
              decoration: InputDecoration(
                labelText: "Prénom",
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Champ Date de Naissance
            TextField(
              decoration: InputDecoration(
                labelText: "Date de naissance",
                prefixIcon: Icon(Icons.calendar_today),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 20),

            

            // Champ Email
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),

            // Champ Mot de Passe
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Mot de passe",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Champ Confirmation du Mot de Passe
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirmation du mot de passe",
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 30),

            // Bouton d'inscription
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6, // 60% de la largeur de l'écran
              child: OutlinedButton(
                onPressed: () {
                  // Logique pour valider et enregistrer l'utilisateur
                },
                child: Text(
                  "S'inscrire",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  side: BorderSide(color: greenColor, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: greenColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
