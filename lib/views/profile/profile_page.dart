import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
            ),
            // Profile Header
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [
                //     Colors.blueAccent, Colors.white12
                //     ],
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                // ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:NetworkImage("https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"), 
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Faizur Rehman',
                    style: TextStyle(
                      
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  // Profile Section
                  SectionHeader(title: 'PROFILE'),
                  ProfileTile(icon: Icons.person, title: 'Account details'),
                  ProfileTile(icon: Icons.file_copy, title: 'Documents'),
                  ListTile(
                    leading: Icon(Icons.location_on, color:Theme.of(context).colorScheme.primary),
                    title: Text('Turn your location'),
                    subtitle: Text('This will improve lots of things'),
                    trailing: Switch(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ),
                  Divider(),
        
                  // Bank Detail Section
                  SectionHeader(title: 'BANK DETAIL'),
                  ProfileTile(icon: Icons.account_balance, title: 'Back Account'),
                  Divider(),
        
                  // Notifications Section
                  SectionHeader(title: 'NOTIFICATIONS'),
                  ListTile(
                    leading: Icon(Icons.notifications_active, color: Theme.of(context).colorScheme.primary),
                    title: Text('Activities notifications'),
                    subtitle: Text('Payment success, failed, and other activities'),
                    trailing: Switch(
                      value: true,
                      onChanged: (bool value) {},
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email, color: Theme.of(context).colorScheme.primary),
                    title: Text('Email notification'),
                    trailing: Switch(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ),
                  Divider(),
        
                  // Security Section
                  SectionHeader(title: 'SECURITY'),
                  ProfileTile(icon: Icons.fingerprint, title: 'Sign in with touch ID'),
                  ProfileTile(icon: Icons.lock, title: 'Change password'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
    );
  }
}
