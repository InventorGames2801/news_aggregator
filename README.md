# my_news
Новостной агрегатор с автообновлением на фреймворке flutter.

Находится на пути:
F:\Programs\flutterprog\my_news>

В качестве архитектуры используется: clean architecture.

Пакет для управления состоянием: bloc

Кеширование: возможно Hive.

API: NewsAPI.org

Использование unit тестов, widget тестов и интегрированных тестов.

Минимум для проекта:

-Unit тесты для всех UseCases (~10-15 тестов)
-Unit тесты для BLoC (~8-10 тестов)
-Widget тесты для критических экранов (~5-7 тестов)

Примерное покрытие: 70-80%

lib/
├── core/
│   ├── constants/          (URLs, API keys, timeouts)
│   ├── errors/             (исключения, error handling)
│   └── utils/              (утилиты, extensions)
├── data/
│   ├── datasources/        (удалённые - API, локальные - DB/cache)
│   ├── models/             (JSON serialization models)
│   ├── repositories/       (implementation репозиториев)
│   └── network/            (HTTP client конфиг)
├── domain/ Сердце приложения. Самый внутренний слой, написан на чистом dart и не имеет зависимостей от flutter, баз данных или сторонних библиотек. Внешние слои знают о внутренних, но внутренние ничего не знают о внешних.
│   ├── entities/           (основные сущности, без JSON аннотаций)
│   ├── repositories/       (abstract interfaces, не имплементация!)
│   └── usecases/           (бизнес-логика, каждый usecase = одна операция)
├── presentation/
│   ├── provider/           (state management) ИСПРАВИТЬ!!
│   ├── pages/              (целые экраны)
│   ├── widgets/            (переиспользуемые компоненты)
│   └── router/             (навигация)
└── main.dart               (точка входа)

Процесс разработки:
Слой presentation (слой представления) это лицо приложения. В flutter проекте он отвечает за ui и user input.
В clean architecture это единственный слой, который знает о flutter, его задача брать данные из domain и превращать в оформленные виджеты, а действия пользователя превращать в вызовы UserCases.

Экраны:
NewsListPage — главный экран со списком новостей 
NewsDetailPage — экран с полной информацией об одной новости 
SearchPage — экран поиска новостей 
FavoritesPage — экран сохраненных новостей 
CategoriesPage — экран выбора категорий фильтрации 
SettingsPage — настройки приложения