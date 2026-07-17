{
  "$schema" = "https://raw.githubusercontent.com/jsonresume/resume-schema/v1.0.0/schema.json";
  awards = [];
  basics = {
    email = "aitvann@gmail.com";
    image = "../resources/avatar.jpg";
    label = "Разработчик на Rust";
    location = {
      city = "Санкт-Петербург";
      region = "";
      countryCode = "RU";
    };
    name = "Иван Айтжанов";
    phone = "+7 (951) 659 83 10";
    profiles = [
      {
        network = "LinkedIn";
        url = "https://www.linkedin.com/in/aitvann";
        username = "aitvann";
      }
      {
        network = "Telegram";
        url = "https://t.me/aitvann";
        username = "aitvann";
      }
      {
        network = "GitHub";
        url = "https://github.com/aitvann";
        username = "aitvann";
      }
    ];
    summary = ''
      Я опытный разработчик на Rust с профессиональным опытом в C++.
      Ищу удалённую позицию в системном программировании, где фокус на безопасности памяти
      и навыки оптимизации пригодятся в создании надёжного и эффективного ПО.
      Открыт к использованию LLM (AI) для повышения производительности.
    '';
  };
  education = [
    {
      institution = "Институт среднего профессионального образования СПбПУ";
      url = "https://college.spbstu.ru";
      area = "Информационные технологии";
      studyType = "Бакалавр";
      startDate = "2018-09-01";
      endDate = "2022-05-01";
    }
  ];
  certificates = [];
  publications = [];
  references = [];
  volunteer = [];
  work = [
    {
      name = "Tradetech";
      url = "https://www.linkedin.com/company/85363151";
      location = "Санкт-Петербург, Россия";
      startDate = "2024-04";
      endDate = "2025-04";
      position = "Software Engineer";
      highlights = [
        ''
          Множество проектов на Rust с использованием Tokio.
        ''
        ''
          Разработал масштабируемую систему ограничения трафика, обеспечивающую
          лимиты на использование по месячным и дневным планам подписки клиентов.
          С помощью PostgreSQL.
        ''
        ''
          Реализовал интеграцию с платёжными шлюзами Paddle и Stripe:
          индивидуальные покупки, обновления/снижения подписок с компенсацией.
          С использованием Axum, Sqlx и PostgreSQL.
        ''
        ''
          Разработал сервис оценки проскальзывания для блокчейна Solana,
          анализ событий с платформ Pump.fun, Raydium и других.
          С использованием PostgreSQL, Sqlx, RabbitMQ и Google PubSub.
        ''
        ''
          Осуществлял наставничество для младшего инженера.
        ''
      ];
    }
    {
      name = "Chi2";
      location = "Санкт-Петербург, Россия";
      startDate = "2023-12";
      endDate = "2024-04";
      position = "Junior Software Engineer";
      highlights = [
        ''
          Rust. Разработка low-latency адаптеров к биржам (OKX, ByBit)
          через RestAPI и WebSocket.
        ''
        ''
          Реализация различных техник оптимизации задержeк TCP соединения.
        ''
      ];
    }
    {
      name = "Tradetech";
      url = "https://www.linkedin.com/company/85363151";
      location = "Санкт-Петербург, Россия";
      startDate = "2021-10-31";
      endDate = "2023-10-31";
      position = "Junior Software Engineer";
      highlights = [
        ''
          Множество проектов на Rust с использованием Tokio.
        ''
        ''
          Разработал сервис ежемесячного отчёта (по электронной почте)
          по активности счётов на бирже для регулятора.
          Отслеживание метрик: объём торгов, RPnL, UPnL за выбранный период.
          Источник данных — все части системы через gRPC, Clickhouse и Kafka.
        ''
        ''
          Реализовал систему логирования: захват каждого запроса + ответа
          без влияния на нормальный поток запросов.
          С использованием Clickhouse.
        ''
        ''
          Реализовал Hot Standby с использованием HashiCorp Consul.
        ''
        ''
          Поддержка сервиса оплаты через блокчейн Solana.
          Обеспечение целостности данных даже при сбоях питания
          (когда graceful-shutdown невозможен).
        ''
      ];
    }
    {
      name = "Wargaming";
      url = "https://www.linkedin.com/company/127309";
      location = "Санкт-Петербург, Россия";
      startDate = "2021-05-31";
      endDate = "2021-08-31";
      position = "Software Engineer Intern";
      highlights = [
        "C++. Исследование возможностей и внедрение `meshoptimizer`
        в конвейер 3D моделей."
        "Python. Исправление багов в игровом backend."
      ];
    }
  ];
  projects = [
    {
      name = "Smart Poselok";
      url = "https://github.com/aitvann/smart-poselok";
      description = ''
        Система управления пригородными посёлками с продвинутой системой управления доступом по ролям.
      '';
      startDate = "2022-04-30";
      endDate = "2022-06-30";
      roles = [
        "Backend Developer"
      ];
    }
    {
      name = "Rustenger";
      url = "https://github.com/aitvann/Rustenger";
      description = ''
        Простой мессенджер на Rust и Tokio.
      '';
      startDate = "2020-01-05";
      endDate = "2020-05-17";
    }
  ];
  skills = [
    {
      name = "Языки программирования";
      keywords = ["Rust (эксперт)" "C++" "Lua" "Clojure" "Nix"];
    }
    {
      name = "Soft Skills";
      keywords = ["Наставничество" "Самообучение" "Agile" "Scrum"];
    }
    {
      name = "Разработка";
      keywords = ["Ревью кода" "TDD" "DDD"];
    }
    {
      name = "Ops";
      keywords = ["Linux" "HashiCorp Consul" "Nix (ОС, менеджер пакетов, DSL)"];
    }
  ];
  languages = [
    {
      fluency = "Носитель языка";
      language = "Русский";
    }
    {
      fluency = "B2";
      language = "Английский";
    }
  ];
  interests = [
    {
      name = "Финтех";
    }
    {
      name = "Открытое ПО";
    }
  ];
  meta = {
    canonical = "https://github.com/jsonresume/resume-schema/blob/v1.0.0/schema.json";
    version = "v1.0.0";
    language = "ru";
  };
}
