import 'package:flutter/material.dart';
import 'package:encrypt_ed/screens/quizScreen.dart';
class Standartization extends StatelessWidget {
  const Standartization({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Криптографическая стандартизация')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Стандартизация РБ',
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
                      'assets/shield.jpg',
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
                'Криптография в Беларуси развивалась с 1999 года, когда были приняты первые стандарты: СТБ 1176.1-99 (функция хэширования) и СТБ 1176.2-99 (электронная цифровая подпись). Однако в процессе стандартизации возникли проблемы:'
              ),
              const SizedBox(height: 20),

              const Text(
               'Не охвачены все области: стандарты для криптографических протоколов и криптографии на эллиптических кривых не были приняты.'
              ),

              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // Выравнивание по центру вертикально
                crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру горизонтально
                children: List.generate(1, (index) {
                  return Container(
                    width: 280, // Ширина прямоугольника
                    height: 40, // Высота прямоугольника
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
                      ['Не завершено принятие стандартов'][index], // Текст внутри
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center, // Выравнивание текста по центру
                      overflow: TextOverflow.ellipsis, // Обработка переполнения текста
                      maxLines: null, // Максимум 1 строка
                    ),
                  );
                }),
              ),

              SizedBox(height: 20),
              const Text(
                      'Некоторые документы оставались проектами, особенно в 2006-2007 годах, '
                      'когда было приостановлено действие переведенных международных стандартов из-за низкого качества перевода.'
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // Выравнивание по центру вертикально
                crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру горизонтально
                children: List.generate(1, (index) {
                  return Container(
                    width: 280, // Ширина прямоугольника
                    height: 40, // Высота прямоугольника
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
                      ['Нет расширений для отечественной криптографии'][index], // Текст внутри
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center, // Выравнивание текста по центру
                      maxLines: null, // Убираем ограничение на количество строк
                    ),
                  );
                }),
              ),

              SizedBox(height: 20),
              const Text(
                     'Не были созданы приложения для международных стандартов, в которых должны были фиксироваться идентификаторы отечественных алгоритмов и форматы данных. '
                     'Это приводило к несоответствию между различными производителями средств ЭЦП.'
              ),
              const SizedBox(height: 20),

              const Text(
                  'План мероприятий по стандартизации (2009 год) включал 22 мероприятия, разделенные на три группы:'

              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // Выравнивание по центру вертикально
                crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру горизонтально
                children: List.generate(1, (index) {
                  return Container(
                    width: 280, // Ширина прямоугольника
                    height: 40, // Высота прямоугольника
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
                      ['22 мероприятия, разделенные на три группы:'][index], // Текст внутри
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center, // Выравнивание текста по центру
                      maxLines: null, // Убираем ограничение на количество строк
                    ),
                  );
                }),
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
                        ['A→10', 'B→5', 'C→7'][index],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              const Text(
                      'Группа A: Разработка и улучшение отечественных стандартов (10 мероприятий.\n'
                      'Группа B: Принятие зарубежных стандартов (5 мероприятий).\n'
                      'Группа C: Совершенствование стандартов форматов криптографических данных (7 мероприятий).\n'
              ),
              const SizedBox(height: 10),
              const Text(
                  'На сегодняшний день выполнена большая часть мероприятий по криптографической стандартизации:'

              ),
              const SizedBox(height: 20),
              Card(
                color: Colors.white,
                elevation: 4.0,  // Добавляем тень
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),  // Закругляем углы карточки
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Первый ГОСТ
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,  // Зеленая рамка
                                  borderRadius: BorderRadius.circular(8), // Закругленные углы рамки
                                ),
                                child: Text(
                                  'СТБ 34.101.27',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - требования безопасности к ПО криптографической защиты.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),  // Расстояние между строками
                      // Второй ГОСТ
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,  // Зеленая рамка
                                  borderRadius: BorderRadius.circular(8), // Закругленные углы рамки
                                ),
                                child: Text(
                                  'СТБ 34.101.31',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - шифрование, хэширование, управление ключами.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),  // Расстояние между строками
                      // Третий ГОСТ
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,  // Зеленая рамка
                                  borderRadius: BorderRadius.circular(8), // Закругленные углы рамки
                                ),
                                child: Text(
                                  'СТБ 34.101.45', //стб П
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - ЭЦП и транспорт ключей на основе эллиптических кривых.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      // 4 гост
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,  // Зеленая рамка
                                  borderRadius: BorderRadius.circular(8), // Закругленные углы рамки
                                ),
                                child: Text(
                                  'СТБ 34.101.17', //стб П
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - запрос на сертификат.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      //5 гост
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,  // Зеленая рамка
                                  borderRadius: BorderRadius.circular(8), // Закругленные углы рамки
                                ),
                                child: Text(
                                  'СТБ 34.101.19', //стб П
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - форматы сертификатов.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      //6 гост
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,  // Зеленая рамка
                                  borderRadius: BorderRadius.circular(8), // Закругленные углы рамки
                                ),
                                child: Text(
                                  'СТБ 34.101.23', //стб П
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                            TextSpan(
                              text: ' - синтаксис криптографических сообщений (CMS).',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      //гост 6
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,  // Зеленая рамка
                                  borderRadius: BorderRadius.circular(8), // Закругленные углы рамки
                                ),
                                child: Text(
                                  'СТБ 34.101.26', //стб П
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - протокол OCSP.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // Выравнивание по центру вертикально
                crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру горизонтально
                children: List.generate(1, (index) {
                  return Container(
                    width: 280, // Ширина прямоугольника
                    height: 40, // Высота прямоугольника
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
                      ['Нереализованны 7 мероприятия, из них важнейшие:'][index], // Текст внутри
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center, // Выравнивание текста по центру
                      maxLines: null, // Убираем ограничение на количество строк
                    ),
                  );
                }),
              ),

              const SizedBox(height: 20),
              Card(
                color: Colors.white,  // Белый фон
                elevation: 4.0,  // Тень для карточки
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),  // Закругленные углы
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),  // Отступы внутри карточки
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1-й ГОСТ
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,  // Красная рамка
                                  borderRadius: BorderRadius.circular(8),  // Закругленные углы рамки
                                ),
                                child: Text(
                                  'TLS Протокол',  // Основное выделение
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - необходимо принять стандарт на использование протокола TLS с криптонаборами на отечественных алгоритмах. '
                                  'Это обеспечит высокий уровень безопасности передачи данных и совместимость с национальными стандартами.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),  // Расстояние между строками

                      // 2-й ГОСТ
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,  // Красная рамка
                                  borderRadius: BorderRadius.circular(8),  // Закругленные углы рамки
                                ),
                                child: Text(
                                  'Аутентификация',  // Основное выделение
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - необходимо разработать стандарт для протоколов аутентификации и выработки общего ключа с использованием эллиптических кривых. '
                                  'Это гарантирует эффективную и безопасную обработку данных при минимальных ресурсах.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),  // Расстояние между строками

                      // 3-й ГОСТ
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,  // Красная рамка
                                  borderRadius: BorderRadius.circular(8),  // Закругленные углы рамки
                                ),
                                child: Text(
                                  'Хэширование',  // Основное выделение
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - необходимо принять стандарт для функций хэширования с 384- и 512-битовыми значениями, что позволяет значительно '
                                  'повысить безопасность хранимых данных и ускорить процессы их обработки.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),  // Расстояние между строками

                      // 4-й ГОСТ
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,  // Красная рамка
                                  borderRadius: BorderRadius.circular(8),  // Закругленные углы рамки
                                ),
                                child: Text(
                                  'Шифрование',  // Основное выделение
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' - требуется принять стандарт для алгоритма шифрования с низкой ресурсоемкостью, специально предназначенного для '
                                  'малых платформ, таких как RFID, что позволяет использовать его в ограниченных вычислительных средах.',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),








            ],

          ),
        ),
      ),
    );
  }

}

