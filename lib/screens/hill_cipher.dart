import 'package:encrypt_ed/screens/quizScreen.dart';
import 'package:flutter/material.dart';

class HillCipherScreen extends StatelessWidget {
  const HillCipherScreen({super.key});

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
               'Шифр Хилла — метод симметричного шифрования, предложенный математиком Лестером Хиллом в 1929 году. '
                   'Это один из первых методов блочного шифрования, использующий линейную алгебру и матрицы для шифрования текста.'
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: const Color(0xFFa9a8ab),
                child: Container(
                  width: 500, // Уменьшаем ширину карточки
                  height: 113,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFececec),
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
                'В шифре Хилла используется ключевая матрица, которая играет важную роль в шифровании и дешифровании текста. Она должна быть обратимой по модулю 26, а ее определитель не может быть равен нулю.'
                    ,
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
              const SizedBox(height: 20), // Добавляем небольшой отступ между строками
              const Column(
                children: [
                  Text(
                    'Рассмотрим, как работает шифр Хилла на примере слова "STUDENTS": ',
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  // Here we align the text to the left
                  Align(
                    alignment: Alignment.centerLeft, // Aligning to the left
                    child: Text(
                      '2. Разбить на биграммы буквы:', // Your text
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal), // Optional styling
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // Выравнивание по центру вертикально
                crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру горизонтально
                children: List.generate(4, (index) {
                  return Container(
                    width: 100, // Ширина прямоугольника
                    height: 30, // Высота прямоугольника
                    alignment: Alignment.center, // Выравнивание текста по центру
                    margin: const EdgeInsets.symmetric(vertical: 5), // Отступы между прямоугольниками
                    decoration: BoxDecoration(
                      color: Colors.white, // Фон прямоугольника
                      borderRadius: BorderRadius.circular(10), // Скругление углов
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFa9a8ab),
                          blurRadius: 12,
                          spreadRadius: 3,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      ['(S, T) → (18, 19)', '(U, D) → (20, 3)', '(E, N) → (4, 13)', '(T, S) → (19, 18)'][index], // Текст внутри
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                      textAlign: TextAlign.center, // Выравнивание текста по центру
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                      '3.  Умножить каждую биграмму на матрицу, '
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
                  width: 292, // Соответствует ширине изображения
                  height: 120, // Соответствует высоте изображения
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
                      'assets/bigram_one.png',
                      width: 293, // Указываем ширину изображения
                      height: 120, // Указываем высоту изображения
                      fit: BoxFit.cover, // Заполняет контейнер без искажений
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              const Column(
                children: [
                  Text(
                      '4.  Делим числа по модулю 26, переводим полученный результат из таблицы: '
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
                  width: 293, // Уменьшаем ширину контейнера
                  height: 25, // Уменьшаем высоту контейнера
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
                      'assets/module_hill.png',
                      width: 293, // Уменьшаем ширину изображения
                      height: 25, // Уменьшаем высоту изображения
                      fit: BoxFit.cover, // Заполняет контейнер без искажений
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              const Column(
                children: [
                  Text(
                      '5.  Переведем значения в буквы, используя таблицу: '
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
                  width: 300, // Уменьшаем ширину контейнера
                  height: 53, // Уменьшаем высоту контейнера
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
                      'assets/table_hill.png',
                      width: 300, // Уменьшаем ширину изображения
                      height: 53, // Уменьшаем высоту изображения
                      fit: BoxFit.cover, // Заполняет контейнер без искажений
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Убираем равномерное распределение, центрируем
                children: List.generate(2, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25), // Уменьшаем расстояние между кружками
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
                        ['Z→25', 'K→10'][index],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                      'Далее необходимо провести аналогичные действия с другими биграммами и перевести полученные значения в символы.'
                  ),
                ],
              ),
              SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                    'Интересные факты',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                      '1. Шифр Хилла был частью криптографических методов, которые использовались до '
                          'появления более сложных алгоритмов, таких как RSA и AES. '
                          'Однако с развитием вычислительной мощности современных машин и криптографических исследований, '
                          'шифр Хилла стал уязвимым к современным методам криптоанализа, таким как метод грубой силы.'
                  ),
                ],
              ),
              const SizedBox(height: 20),





              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz(quizType: 'hill'),
                      ),
                    );
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
