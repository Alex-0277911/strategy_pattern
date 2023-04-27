// Клас, який представляє погодні дані
class WeatherData {
  // Поля для зберігання погодних даних
  double temperature;
  double humidity;
  double pressure;

  // Конструктор
  WeatherData(this.temperature, this.humidity, this.pressure);
}

// Абстрактний клас стратегії для отримання погодних даних
abstract class WeatherStrategy {
  Future<WeatherData> getWeatherData();
}

// Клас стратегії для отримання погодних даних з Інтернету
class InternetWeatherStrategy implements WeatherStrategy {
  @override
  Future<WeatherData> getWeatherData() async {
    // Отримання погодних даних з Інтернету
    // ...

    // Повернення отриманих даних
    return WeatherData(25.0, 70.0, 100.0);
  }
}

// Клас стратегії для отримання погодних даних з локальної бази даних
class DatabaseWeatherStrategy implements WeatherStrategy {
  @override
  Future<WeatherData> getWeatherData() async {
    // Отримання погодних даних з бази даних
    // ...

    // Повернення отриманих даних
    return WeatherData(20.0, 80.0, 95.0);
  }
}

// Клас, який використовує стратегію для отримання погодних даних
class WeatherApp {
  // Поле, яке містить поточну стратегію
  late WeatherStrategy _weatherStrategy;

  // Метод для зміни стратегії
  void setWeatherStrategy(WeatherStrategy strategy) {
    _weatherStrategy = strategy;
  }

// Метод для отримання погодних даних
  Future<WeatherData> getWeatherData() {
// Виклик методу отримання погодних даних поточної стратегії
    return _weatherStrategy.getWeatherData();
  }
}

// Приклад використання
void main() async {
// Створення об'єкту додатку
  var weatherApp = WeatherApp();

// Встановлення стратегії отримання погодних даних з Інтернету
  weatherApp.setWeatherStrategy(InternetWeatherStrategy());

// Отримання погодних даних
  var weatherData = await weatherApp.getWeatherData();
  print('Temperature: ${weatherData.temperature}');
  print('Humidity: ${weatherData.humidity}');
  print('Pressure: ${weatherData.pressure}');
// Зміна стратегії отримання погодних даних на стратегію з бази даних
  weatherApp.setWeatherStrategy(DatabaseWeatherStrategy());

// Отримання погодних даних
  weatherData = await weatherApp.getWeatherData();
  print('Temperature: ${weatherData.temperature}');
  print('Humidity: ${weatherData.humidity}');
  print('Pressure: ${weatherData.pressure}');
}



// У цьому прикладі клас `WeatherData` представляє погодні дані, які можуть бути
// отримані з різних джерел (Інтернет або база даних).
// Клас `WeatherStrategy` є абстрактним класом стратегії, який містить метод для
// отримання погодних даних.
// Класи `InternetWeatherStrategy` і `DatabaseWeatherStrategy` є конкретними
// реалізаціями стратегій отримання погодних даних з Інтернету і з бази даних
// відповідно. 
//Клас `WeatherApp` використовує поточну стратегію для отримання погодних даних.

// У методі `main()` спочатку створюється об'єкт додатку `weatherApp`, потім
// встановлюється стратегія отримання погодних даних з Інтернету, отримуються
// погодні дані і виводяться на екран. Потім стратегія змінюється на стратегію з
// бази даних, отримуються погодні дані знову і виводяться на екран.

// Таким чином, патерн стратегії дозволяє змінювати алгоритм програми
// в залежності від потреб може бути корисно в багатьох випадках, наприклад,
// для реалізації різних алгоритмів сортування, обчислення, валідації тощо.

// В даному прикладі патерн стратегії дозволяє легко змінити джерело отримання
// погодних даних, не змінюючи основний код програми. Це може бути корисно,
// якщо потрібно змінювати джерело отримання даних в залежності від змінних
// факторів, наприклад, наявності Інтернету або швидкості підключення до бази
// даних.

// Також варто зазначити, що патерн стратегії може бути комбінований з іншими
// патернами, наприклад, з патерном фабричний метод, який дозволяє створювати
// об'єкти різних класів в залежності від поточної стратегії.

// У цілому, патерн стратегії є корисним інструментом для реалізації гнучких
// і масштабованих програм, що можуть змінюватися в залежності від потреб.
