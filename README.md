# my_news
Новостной агрегатор с автообновлением.

В качесиве архитектуры используется% clean architecture.

В качестве API% либо GNews API, либо NewsData.io

Пакет для управления состоянием: provider

Кеширование: возможно Hive.

API: NewsData.io

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
├── domain/
│   ├── entities/           (основные сущности, без JSON аннотаций)
│   ├── repositories/       (abstract interfaces, не имплементация!)
│   └── usecases/           (бизнес-логика, каждый usecase = одна операция)
├── presentation/
│   ├── bloc/ or provider/  (state management)
│   ├── pages/              (целые экраны)
│   ├── widgets/            (переиспользуемые компоненты)
│   └── router/             (навигация)
└── main.dart               (точка входа)
