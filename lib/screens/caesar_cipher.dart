import 'package:flutter/material.dart';

class CaesarCipherScreen extends StatelessWidget {
  const CaesarCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Caesar Cipher')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Шифр Цезаря',
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/caesar.jpg',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Шифр Цезаря — это один из самых простых и древних методов шифрования. ',
              ),
              const SizedBox(height: 20),

              // Карточка с изображением
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Colors.purple.withOpacity(0.6),
                child: Container(
                  width: 280, // Уменьшаем ширину карточки
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/example_caesar.png',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Он основан на сдвиге букв алфавита на определенное количество позиций. '
                    'Например, если сдвиг равен 3, то "A" превращается в "D", "B" — в "E" и так далее.',
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
                          spreadRadius: 3,
                        ),
                      ],
                    ),

                    child: CircleAvatar(
                      backgroundColor: Colors.purple.withOpacity(0.3),
                      child: Text(
                        ['A→D', 'B→E', 'C→F'][index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
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
                    '1. В классической версии шифра Цезаря ключ представляет собой число от 1 до 25. '
                        'Это означает, что буквы алфавита могут сдвигаться максимум на 25 позиций, '
                        'после чего они возвращаются к исходной позиции.',
                    ),
          ],
                  ),
                    SizedBox(height: 20),
                  const Column(
                    children: [
                  Text(
                  '2.  Шифр Цезаря использовался в Древнем Риме, около 100 года до н. э. '
                      'Император Гай Юлий Цезарь применял этот метод для секретной переписки с военачальниками.'
                  ),
                  ],
                  ),
                  SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Colors.purple.withOpacity(0.6),
                child: Container(
                  width: 310, // Соответствует ширине изображения
                  height: 160, // Соответствует высоте изображения
                  decoration: BoxDecoration(
                    color: const Color(0xFF442F16),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6),
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
                      'assets/ancient_rome.jpg',
                      width: 310, // Указываем ширину изображения
                      height: 180, // Указываем высоту изображения
                      fit: BoxFit.cover, // Заполняет контейнер без искажений
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Column(
                    children: [
                  Text(
                    '3.  Шифр Цезаря является моноалфавитной подстановкой, поскольку каждая буква заменяется одной и той же буквой в зависимости от сдвига. '
                        'В отличие от сложных шифров, в нем нет многократной замены символов или перестановки букв'
                  ),
                ],
              ),

            ],

          ),
        ),
      ),
    );
  }
}
