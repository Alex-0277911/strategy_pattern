// Паттерн стратегії відмінно підходить для розробки ігрових додатків, де можна
// використовувати різні алгоритми поведінки гравців, ворогів, зброї, техніки тощо

// приклад гри, де гравець може вибрати різні види зброї, кожна з
// яких має свою власну стратегію поведінки

// абстрактний клас Weapon з методом attack(), який
// буде викликатися для здійснення атаки зброєю. Далі створюємо класи конкретної
// зброї, які реалізують метод attack() за своїм власним алгоритмом

abstract class Weapon {
  void attack();
}

class Pistol implements Weapon {
  @override
  void attack() {
    print("Стріляю з Pistol!");
  }
}

class Shotgun implements Weapon {
  @override
  void attack() {
    print("Стріляю з Shotgun!");
  }
}

class MachineGun implements Weapon {
  @override
  void attack() {
    print("Стріляю з MachineGun!");
  }
}

// клас Player, який має поле з об'єктом зброї та метод attack(),
// який викликає метод attack() зброї.

class Player {
  Weapon? weapon;

  void attack() {
    weapon!.attack();
  }
}

// об'єкти гравця та зброї та встановлювати потрібну
// зброю для гравця. Наприклад:

void main() {
  Player player = Player();
  player.weapon = Pistol(); // встановлюємо Pistol

  player.attack(); // гравець використовує Pistol

  player.weapon = Shotgun(); // змінюємо зброю на Shotgun

  player.attack(); // гравець використовує Shotgun

  player.weapon = MachineGun(); // змінюємо зброю на MachineGun

  player.attack(); // гравець використовує MachineGun

  player.weapon = Shotgun(); // змінюємо зброю на Shotgun

  player.attack(); // гравець використовує Shotgun
}

// Таким чином, паттерн стратегії дозволяє визначати різні алгоритми поведінки
// для об'єктів, що дозволяє динамічно змінювати їх в процесі роботи програми.