import 'package:flutter/material.dart';
import 'package:encrypt_ed/screens/quizScreen.dart';

class VernamCipherScreen extends StatelessWidget {
  const VernamCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Меню')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Шифр Вернама',
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
                      'assets/vernam.png',
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
                      'assets/vernam_example.png',
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
                    '1.Использование одноразового ключа: '
                        'Ключ должен быть такой же длины, как и само сообщение, также должен быть случайным и использоваться только один раз.'
                        'Повторное использование ключа делает шифр уязвимым.',
                  ),
                ],
              ),
              SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                      '2. В основе шифра лежит операция XOR (исключающее ИЛИ). '
                          'При шифровании каждый бит сообщения складывается с соответствующим битом ключа по правилу:'
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  return Container(
                    width: 80, // Ширина прямоугольника
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
                      ['0 ⊕ 0 = 0', '0 ⊕ 1 = 1', '1 ⊕ 1 = 0'][index], // Текст внутри
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                      '3. Шифр Вернама абсолютно стойкий: если ключ случайный, уникальный и используется один раз, расшифровать сообщение невозможно. '
                          'Этот метод доказан как информационно-теоретически безопасный.'
                  ),
                ],
              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Color(0xFFa9a8ab),
                child: Container(
                  width: 500, // Уменьшаем ширину карточки
                  height: 125,
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
                      'assets/table_vernam.png',
                      width: 500,
                      height: 125,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const Column(
                children: [
                  Text(
                      '2. Шифр Вернама был использован в военной разведке во время Первой и '
                          'Второй мировых войн, поскольку он позволяет легко зашифровать большое количество информации. К слову, благодаря'
                          'шифру Вернаму была взломана немецкая машинка "Энигма."'
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Colors.purple.withOpacity(0.6),
                child: Container(
                  width: 293, // Уменьшаем ширину контейнера
                  height: 127, // Уменьшаем высоту контейнера
                  decoration: BoxDecoration(
                    color: const Color(0xFF442F16),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
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
                      'assets/ENIGMA.jpg',
                      width: 293, // Уменьшаем ширину изображения
                      height: 127, // Уменьшаем высоту изображения
                      fit: BoxFit.cover, // Заполняет контейнер без искажений
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Quiz(quizType: 'vernam'),
                        ));
                  },
                  child: const Text('Тест'),
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
