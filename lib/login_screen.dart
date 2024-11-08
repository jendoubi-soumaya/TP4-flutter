import 'package:flutter/material.dart';
import 'package:flutter_application_4/incription_screen.dart';

class LoginScreen extends StatelessWidget {
  // Couleur personnalisée
  final Color greenColor = const Color(0xFF9BE4AF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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

            // "Welcome Back!" Text
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: greenColor,
              ),
            ),
            SizedBox(height: 10),

            // Sous-titre
            Text(
              "Please sign in to your account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30),

            // Champ Email
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Champ Mot de Passe
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 30),

            // Bouton de Connexion - taille réduite
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6, // 60% de la largeur de l'écran
              child: OutlinedButton(
                onPressed: () {
                  // Logique de connexion ici
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12), // Moins de padding
                  side: BorderSide(color: greenColor, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: greenColor, // Fond blanc
                ),
              ),
            ),
            SizedBox(height: 10),

            // Bouton d'inscription - taille réduite
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6, // 60% de la largeur de l'écran
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SignupPage()),
  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: greenColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12), // Moins de padding
                  side: BorderSide(color: greenColor, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.white, // Fond blanc
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
