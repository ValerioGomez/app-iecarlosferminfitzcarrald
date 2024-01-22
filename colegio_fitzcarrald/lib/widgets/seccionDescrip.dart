import 'package:flutter/material.dart';

class DescripccionSeccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Nuestra institución se enorgullece de ofrecer una educación de calidad que va más allá de la transmisión de conocimientos, abarcando el desarrollo integral de cada estudiante. Nos dedicamos a cultivar un ambiente educativo en el que la curiosidad, la creatividad y el pensamiento crítico florezcan. A través de un enfoque pedagógico centrado en el alumno, nuestros docentes altamente capacitados se esfuerzan por inspirar el amor por el aprendizaje y promover habilidades que vayan más allá de las aulas. Valoramos la diversidad, la inclusión y la participación activa de los estudiantes en su proceso educativo. Nuestra misión es formar individuos críticos, creativos e innovadores, equipándolos con las herramientas necesarias para enfrentar los desafíos de una sociedad emergente. En nuestra institución, la educación es la llave que abre todas las puertas del conocimiento, y estamos comprometidos con el crecimiento y desarrollo integral de cada estudiante que camina por nuestras aulas.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.75),
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Duración del Nivel  ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.timer,
                color: Color(0xFF631919),
              ),
              SizedBox(height: 5),
              Text(
                "5 años",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Puntuación  ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 5),
              Text(
                "3.5",
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
