import 'package:flutter/material.dart';

class AlarmaView extends StatelessWidget {
  final List<Map<String, String>> notificaciones = [
    {
      'titulo': 'Reunión con Juan',
      'detalle': 'Hoy a las 3:00 PM en la sala de juntas.',
    },
    {
      'titulo': 'Cita médica',
      'detalle': 'Mañana a las 9:00 AM en Clínica Central.',
    },
    {
      'titulo': 'Recordatorio: Llamada con cliente',
      'detalle': 'Viernes a las 11:00 AM.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
      ),
      body: ListView.builder(
        itemCount: notificaciones.length,
        itemBuilder: (context, index) {
          final noti = notificaciones[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.notifications),
              title: Text(noti['titulo'] ?? ''),
              subtitle: Text(noti['detalle'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}