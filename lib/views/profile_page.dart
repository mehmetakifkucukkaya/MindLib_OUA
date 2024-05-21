import 'dart:io'; // File sınıfını ekledik

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController linkController = TextEditingController();

  bool isEditingAbout = false;
  File? profileImage; // String yerine File türünde değişken

  // Fonksiyon: Profil Fotoğrafını Değiştir
  Future<void> _changeProfilePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Seçilen fotoğrafı alır ve setState kullanarak yeniden çizer
      setState(() {
        // pickedFile.path değil, pickedFile!.path kullanıyoruz
        // ve bu değeri File sınıfının constructor'ına geçiriyoruz
        profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    aboutController.dispose();
    linkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.orange[300],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          // Profil fotoğrafını kontrol ediyoruz
                          // Eğer seçilmiş bir fotoğraf yoksa, varsayılan resmi kullanıyoruz
                          backgroundImage: profileImage != null
                              ? FileImage(profileImage!)
                              : const AssetImage(
                                      'assets/profile_picture.png')
                                  as ImageProvider,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onPressed: _changeProfilePicture,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      nameController.text.isNotEmpty
                          ? nameController.text
                          : 'Mehmet Akif Küçükkaya',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'İletişim Bilgilerim',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      leading:
                          Icon(Icons.email, color: Colors.orange[800]),
                      title: Text(emailController.text.isNotEmpty
                          ? emailController.text
                          : 'mehmetakif@gmail.com'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.link, color: Colors.orange[800]),
                      title: Text(linkController.text.isNotEmpty
                          ? linkController.text
                          : 'https://1000kitap.com/mehmetakif'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hakkımda',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: isEditingAbout
                            ? const Icon(Icons.save)
                            : const Icon(Icons.edit),
                        onPressed: () {
                          setState(() {
                            isEditingAbout = !isEditingAbout;
                            if (!isEditingAbout) {
                              aboutController.text = aboutController.text;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  isEditingAbout
                      ? TextField(
                          controller: aboutController,
                          onChanged: (value) {
                            setState(() {
                              aboutController.text = value;
                            });
                          },
                          decoration: const InputDecoration(
                            hintText: 'Hakkımda yazısı...',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 3,
                        )
                      : Text(
                          aboutController.text.isNotEmpty
                              ? aboutController.text
                              : 'Kitapları seven biriyim ve edebiyata tutkum var. Hafta sonlarımı iyi bir kitap ve bir fincan kahve eşliğinde kıvrılarak geçirmeyi severim. Klasik romanlardan modern kurguya kadar, farklı türleri keşfetmek ve yeni yazarlar keşfetmekten keyif alırım. Okuma sadece zihnimi zenginleştirmekle kalmaz, aynı zamanda dünyayı farklı bakış açılarından görmeme de ilham verir.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                        ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
