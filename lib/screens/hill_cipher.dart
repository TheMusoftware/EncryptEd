import 'package:encrypt_ed/screens/quizScreen.dart';
import 'package:flutter/material.dart';

class HillCipherScreen extends StatelessWidget {
  const HillCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      const Text('Меню')),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Шифр Хилла',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 10, // Тень для эффекта поднятия
              shadowColor: Colors.purple.withOpacity(0.6),
              child: Container(
                width: 200, // Уменьшаем ширину карточки
                height: 265,
                decoration: BoxDecoration(
                  color: const Color(0xFF0D030E),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFa9a8ab),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/lester_hill1.png',
                    width: 353,
                    height: 353,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Шифр Вернама – это метод шифрования, который считается абсолютно стойким при выполнении определенных условий. '
                  'Он также известен как одноразовый блокнот (One-Time Pad).',
            ),
            const SizedBox(height: 20),

            // Карточка с изображением
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 10, // Тень для эффекта поднятия
              shadowColor: Color(0xFFa9a8ab),
              child: Container(
                width: 500, // Уменьшаем ширину карточки
                height: 113,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFececec),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/hill_example.png',
                    width: 500,
                    height: 113,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'В 1917 году в компании Bell Labs телеграфист Гильберт Вернам изобрёл шифр, где каждая буква сообщения маскируется другой с помощью XOR. '
                  'Позже Клод Шеннон доказал его абсолютную криптографическую стойкость.',
            ),
            const SizedBox(height: 20),
            const Column(
              children: [
                Text(
                  'Основные характеристики',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20), // Добавляем небольшой отступ между строками
            const Column(
              children: [
                Text(
                  'Рассмотрим, как работает шифр Хилла на примере слова "STUDENTS": ',
                ),
              ],
            ),
            SizedBox(height: 20),
            const Column(
              children: [
                Text(
                    '1.Представим буквы в числовом виде (A = 0, B = 1, ..., Z = 25):\nS = 18, T = 19, U = 20, D = 3, E = 4, N = 13, T = 19, S = 18 в виде вектора:'
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) {
                return Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6), // Фиолетовая тень
                        blurRadius: 12,
                        spreadRadius: 2,
                      ),
                    ],
                  ),

                  child: CircleAvatar(
                    backgroundColor: Colors.purple.withOpacity(0.3),
                    child: Text(
                      ['S→18', 'T→19', 'U→20'][index],
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            const Column(
              children: [
                Text(
                    '2. Выбираем матрицу ключа (размера 2×2 или 3×3), важно, чтобы матрица была обратимой по модулю 26):\n'

                ),
              ],
            ),
            const SizedBox(height: 20),
            const Column(
              children: [
                Text(
                    '3. Разбиваем слово на блоки по 2 символа:\n'

                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) {
                return Container(
                  width: 100, // Ширина прямоугольника
                  height: 30, // Высота прямоугольника
                  alignment: Alignment.center, // Выравнивание текста по центру
                  decoration: BoxDecoration(
                    color: Colors.white, // Фон прямоугольника
                    borderRadius: BorderRadius.circular(10), // Скругление углов
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFa9a8ab),
                        blurRadius: 12,
                        spreadRadius: 3,
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    ['(S, T) → (18, 19)', '(U, D) → (20, 3)', '(E, N) → (4, 13)'][index], // Текст внутри
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                );
              }),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz(quizType: 'hill'),
                      ));
                },
                child: const Text('Train'),
              ),
            ),
          ],
    ),
        ),
      ),
    );
  }
}
