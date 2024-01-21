import 'package:flutter/material.dart';

class DescripccionSeccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "La etapa de Primaria en nuestra institución es.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.75),
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(
                Icons.timer,
                color: Color(0xFF631919),
              ),
              SizedBox(width: 5),
              Text(
                "5 años",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
