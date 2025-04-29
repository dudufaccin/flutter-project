import 'package:flutter/material.dart';

class LoggedInScreen extends StatelessWidget {
  final String userEmail;

  const LoggedInScreen({super.key, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50, // Cor de fundo suave
      appBar: AppBar(
        title: const Text('Usuário Logado'),
        backgroundColor: Colors.green, // Cor da AppBar
        elevation: 0, // Removendo a sombra da AppBar
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white, // Cor de fundo da caixa
            borderRadius: BorderRadius.circular(12), // Bordas arredondadas
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Sombra leve
                spreadRadius: 2,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 80, // Ícone grande e verde para indicar sucesso
              ),
              const SizedBox(height: 20),
              Text(
                'Bem-vindo, $userEmail!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color:
                      Colors
                          .green
                          .shade700, // Cor verde mais forte para o texto
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aqui você pode adicionar lógica para fazer logout ou navegar para outra tela
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Cor de fundo do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // Bordas arredondadas no botão
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 40,
                  ),
                  elevation: 3, // Leve sombra para o botão
                ),
                child: const Text(
                  'Continuar',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
