
import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  final String imageUrl;
  final String label;

  const GridViewItem({required this.imageUrl, required this.label,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(backgroundImage:NetworkImage(imageUrl),radius:15,),
        Text(label,style:const TextStyle(fontSize:8,fontWeight:FontWeight.bold)),
      ],
    );
  }
}

List<GridViewItem> gridViewItems = [
  const GridViewItem(
    imageUrl: 'https://cdn3d.iconscout.com/3d/free/thumb/free-flutter-3d-icon-download-in-png-blend-fbx-gltf-file-formats--android-logo-google-dart-coding-lang-pack-logos-icons-7577998.png?f=webp',
    label: 'Flutter',
  ),
  const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWOSHeAHjEwsgXNfh6XH4z4hw0zi2utm3AOSq-IQpUEgMtwdrTn_wwsWPahK4puTaqzjw&usqp=CAU',
    label: 'Dart',
  ),const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4vbHc0utkypQyqMqBtXSJqnfRu6eHT0dKQ&s',
    label: 'Java',
  ),const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXpCVrym3sQKRS3_hAnLQIocLuMJorvv0Jiw&s',
    label: 'Express.js',
  ),const GridViewItem(
    imageUrl: 'https://cdn-icons-png.flaticon.com/512/919/919825.png',
    label: 'Node.js',
  ),const GridViewItem(
    imageUrl: 'https://cdn3d.iconscout.com/3d/free/thumb/free-typescript-3d-icon-download-in-png-blend-fbx-gltf-file-formats--microsoft-logo-angular-language-javascript-static-type-coding-lang-pack-logos-icons-7577992.png?f=webp',
    label: 'TypeScript',
  ),const GridViewItem(
    imageUrl: 'https://www.gstatic.com/devrel-devsite/prod/v35e3d347a323c673294794cf0b643760fd66bb529efbd7dccaa22518acef0297/firebase/images/touchicon-180.png',
    label: 'Firebasea',
  ),const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1AqnAdi8iOPL35Dn2pALEBHQQgkC1gd22aQ&s',
    label: 'MongoDB',
  ),const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxlTaDaAe905XCf1vnubMQiMd4bqzej_Y-Fg&s',
    label: 'MySql',
  ),const GridViewItem(
    imageUrl: 'https://res.cloudinary.com/strapi/image/upload/v1621261454/logo_vgoldp.png',
    label: 'GetX',
  ),
  const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeXxSWJuXcVgjnMNdwzaKZ-26FmHM7ukRTIg&s',
    label: 'TFlite',
  ),
  const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqozVHv0fHusGky73gcUtK6onGf10ymZ3ReA&s',
    label: 'Android S',
  ),
  const GridViewItem(
    imageUrl: 'https://shop.bloclibrary.dev/cdn/shop/products/kiss-cut-stickers-5.5x5.5-default-606a33ae77a7e_grande.jpg?v=1617572787',
    label: 'BLoc',
  ),
  const GridViewItem(
    imageUrl: 'https://i0.wp.com/ahex.co/wp-content/uploads/2022/06/MERN-Stack-Development-Company.png?fit=475%2C338&ssl=1',
    label: 'MERN',
  ),
  const GridViewItem(
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7gYsppNJhxinw1uOB03szNE81aFsAOavaQ&s',
    label: 'Github',
  ),

  // Add more items to the list as needed
];