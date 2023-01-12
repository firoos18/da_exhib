import 'package:flutter/material.dart';

class ArtworkTab extends StatefulWidget {
  const ArtworkTab({super.key});

  @override
  State<ArtworkTab> createState() => _ArtworkTabState();
}

class _ArtworkTabState extends State<ArtworkTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(),
    );
  }
}
