import 'package:flutter/material.dart';
import 'package:encrypt_ed/screens/quizScreen.dart';
class Standartization extends StatelessWidget {
  const Standartization({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Стандартизация')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Криптографическая стандартизация ',
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
                      'assets/wheatstone.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover, // Обеспечивает правильную подгонку изображения
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              const SizedBox(height: 30),
              const Text(
                'Шифр Уитсона  — это шифр, который использует таблицу подстановки для замены букв, с дополнительной системой шифрования.'
                    'Шифр Уитсона может обозначать несколько различных методов, но обычно его связывают с методом двойного квадрата, который использует таблицу 5x5 для подстановки символов.',
              ),
              const SizedBox(height: 20),

              const Text(
                'Метод двойного квадрата Уитсона (Шифр Уитсона) включает две таблицы подстановки 5x5, каждая из '
                    'которых содержит все буквы алфавита, за исключением одной, обычно "J", '
                    'которое заменяется на "I". Это позволяет использовать только 25 символов для латинского алфавита.'
                ,
              ),
              const SizedBox(height: 20),

              const SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                    'Как работает шифрование ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              const Text(
                '1. Берём ключевое слово example и  добавляем оставшиеся буквы алфавита (без повторов и исключая одну букву, например, "J"',

              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Colors.purple.withOpacity(0.6),
                child: Container(
                  width: 240, // Соответствует ширине изображения
                  height: 240, // Соответствует высоте изображения
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
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/square_1st.jpg',
                      width: 240, // Указываем ширину изображения
                      height: 240, // Указываем высоту изображения
                      fit: BoxFit.cover, // Заполняет контейнер без искажений
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),// Добавляем небольшой отступ между строками
              const Text(
                  '2. Берём ключевое слово keyword, добавляем оставшиеся буквы алфавита (без повторов и исключая одну букву): '
              ),

              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Colors.purple.withOpacity(0.6),
                child: Container(
                  width: 240, // Соответствует ширине изображения
                  height: 240, // Соответствует высоте изображения
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
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/square_2nd.jpg',
                      width: 240, // Указываем ширину изображения
                      height: 240, // Указываем высоту изображения
                      fit: BoxFit.cover, // Заполняет контейнер без искажений
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),// Добавляем небольшой отступ между строками
              const Text(
                  '3. Теперь разберём открытый текст "cat" на пары букв (поскольку это слово состоит из трёх букв, добавим разделитель (например, "X") в'
                      ' конце, чтобы получить четное количество букв)'
              ),

              SizedBox(height: 20),
              Row(
                // Выравнивание по центру вертикально
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) {
                  return Container( //just for design
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
                        ['CA', 'TX'][index],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              const Text(
                '4. Шифрование первой пары: в первой таблице буква "c,a" находятся в первой таблице на коордитанах: ',
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) {
                  return Container(
                    width: 80, // Ширина прямоугольника
                    height: 30, // Высота прямоугольника
                    alignment: Alignment.center, // Выравнивание текста по центру
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.3), // Фон прямоугольника
                      borderRadius: BorderRadius.circular(10), // Скругление углов
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.6),
                          blurRadius: 12,
                          spreadRadius: 3,
                          offset: const Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      ['C = (3,3)', 'A = (1,3)'][index], // Текст внутри
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  );
                }),
              ),

              SizedBox(height: 20),
              const Text(
                'Буквы находятся в одном столбце (столбец 3). По правилам шифрования, если буквы находятся в одном столбце, мы заменяем их на буквы, которые расположены ниже: ',
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // Выравнивание по центру вертикально
                crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру горизонтально
                children: List.generate(3, (index) {
                  return Container(
                    width: 80, // Ширина прямоугольника
                    height: 30, // Высота прямоугольника
                    alignment: Alignment.center, // Выравнивание текста по центру
                    margin: const EdgeInsets.symmetric(vertical: 5), // Отступы между элементами
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.3), // Фон прямоугольника
                      borderRadius: BorderRadius.circular(10), // Скругление углов
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.6),
                          blurRadius: 12,
                          spreadRadius: 3,
                          offset: const Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      ['C = (2,3) → D', 'A = (1,3) → F', 'CA → DF'][index], // Текст внутри
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  );
                }),
              ),

              SizedBox(height: 20),
              const Text(
                '5. Шифрование второй пары ("TX"):',
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) {
                  return Container(
                    width: 80, // Ширина прямоугольника
                    height: 30, // Высота прямоугольника
                    alignment: Alignment.center, // Выравнивание текста по центру
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.3), // Фон прямоугольника
                      borderRadius: BorderRadius.circular(10), // Скругление углов
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.6),
                          blurRadius: 12,
                          spreadRadius: 3,
                          offset: const Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      ['T =  (4, 4)', 'X = (5, 3)'][index], // Текст внутри
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              const Text(
                'T (строка 4, столбец 4) заменяется на букву, расположенную в строке 4 и в столбце 3:'
                    'X (строка 5, столбец 3) заменяется на букву, расположенную в строке 5 и в столбце 4:',
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(1, (index) {
                  return Container(
                    width: 80, // Ширина прямоугольника
                    height: 30, // Высота прямоугольника
                    alignment: Alignment.center, // Выравнивание текста по центру
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.3), // Фон прямоугольника
                      borderRadius: BorderRadius.circular(10), // Скругление углов
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.6),
                          blurRadius: 12,
                          spreadRadius: 3,
                          offset: const Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      ['T → X', 'S → Y'][index], // Текст внутри
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              const Text(
                '6. Совмещаем результаты:  ',
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(1, (index) {
                  return Container(
                    width: 80, // Ширина прямоугольника
                    height: 30, // Высота прямоугольника
                    alignment: Alignment.center, // Выравнивание текста по центру
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.3), // Фон прямоугольника
                      borderRadius: BorderRadius.circular(10), // Скругление углов
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.6),
                          blurRadius: 12,
                          spreadRadius: 3,
                          offset: const Offset(3, 3),
                        ),
                      ],
                    ),

                    child: Text(
                      ['cat → DFPK'][index], // Текст внутри
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.white),
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
                          builder: (context) => Quiz(quizType: 'caesar'),
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

