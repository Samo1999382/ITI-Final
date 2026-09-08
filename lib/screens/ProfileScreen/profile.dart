import 'package:flutter/material.dart';
import 'package:test2/screens/loginScreen/logInScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xFFD9D9D9),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Rana Mohy',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),
              _buildOptionTile(
                icon: Icons.person_sharp,
                title: 'Profile',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildOptionTile(
                icon: Icons.settings,
                title: 'Setting',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildOptionTile(
                icon: Icons.email,
                title: 'Contact',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildOptionTile(
                icon: Icons.share,
                title: 'Share App',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildOptionTile(
                icon: Icons.help,
                title: 'Help',
                onTap: () {},
              ),
              const Spacer(),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => logInScreen()), (route) => false,);
                  },
                  borderRadius: BorderRadius.circular(20),
                  hoverColor: const Color(0x14F55F1F),
                  splashColor: const Color(0x7FF55F1F),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Sign Out',
                        style: TextStyle(
                          color: Color(0xFFF55F1F),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ),

              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      color: const Color(0xFFF8F7F7),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        hoverColor: const Color(0xFFE2E0E0),
        splashColor: const Color(0xFFE2E0E0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF333333),
                size: 22,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}