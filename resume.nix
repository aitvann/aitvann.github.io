{
  "$schema" = "https://raw.githubusercontent.com/jsonresume/resume-schema/v1.0.0/schema.json";
  awards = [];
  basics = {
    email = "aitvann@gmail.com";
    image = "./resources/avatar.jpg";
    label = "Rust Developer";
    location = {
      city = "St Petersburg";
      countryCode = "RU";
    };
    name = "Ivan Aitzhanov";
    phone = "+7 (951) 659 83 10";
    profiles = [
      {
        network = "LinkedIn";
        url = "https://www.linkedin.com/in/aitvann/";
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
      Hi! I am an experienced Rust developer and have professional C++ experience.
      Seeking a remote systems programming role where strong systems knowledge, a
      focus on memory safety, and performance optimization experience
      contribute to building reliable and efficient software.
      I am open-minded about using LLM (AI) for improving productivity.
    '';
  };
  education = [
    {
      institution = "Институт среднего профессионального образования СПбПУ";
      url = "https://college.spbstu.ru/";
      area = "Information Technology";
      studyType = "Bachelor";
      startDate = "2018";
      endDate = "2022";
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
      location = "St Petersburg City, Russia";
      startDate = "2024-04";
      endDate = "2025-04";
      position = "Software Engineer";
      highlights = [
        "Async Rust. Designed and built a scalable, distributed traffic limiting system
        to enforce monthly and daily usage limits based on client subscription plans.
        Utilizing PostgreSQL."
        "Async Rust. Implemented an extensive integration with Paddle and Stripe payment gateways:
        individual purchases, subscription upgrades/downgrades with compensation. Utilizing Axum,
        Sqlx and PostgreSQL."
        "Rust. Developed a Solana blockchain slippage estimation service,
        analyzing on-chain events from Pump.fun, Raydium, and other platforms.
        Utilizing PostgreSQL, Sqlx, RabbitMQ and Google PubSub."
        "Mentored a junior engineer."
      ];
    }
    {
      name = "Tradetech";
      url = "https://www.linkedin.com/company/85363151";
      location = "St Petersburg City, Russia";
      startDate = "2021-10-31";
      endDate = "2023-10-31";
      position = "Junior Software Engineer";
      highlights = [
        "Async Rust. Developed a service for monthly reporting (via email)
        on exchange accounts activity to the regulatory authority.
        Tracking metrics like trading volume, RPnL, and UPnL for selected period.
        Sourcing data from all around the system utilizing gRPC, Clickhouse and Kafka."
        "Async Rust. Build a logging system: capture every user request+response
        without an impact on the normal request flow. Utilizing Clickhouse."
        "Async Rust. Implemented leader service election utilizing HashiCorp Consul."
        "Async Rust. Support for Solana payment gateway service ensuring data integrity
        in cases of power outage (when graceful shutdown is not possible)"
        "Async Rust. Developed a CRUD service for all kinds of entities
        utilizing Actix Web, Sqlx, PostgreSQL and Clickhouse."
      ];
    }
    {
      name = "Wargaming";
      url = "https://www.linkedin.com/company/127309";
      location = "St Petersburg City, Russia";
      startDate = "2021-05-31";
      endDate = "2021-08-31";
      position = "Software Engineer Intern";
      highlights = [
        "C++. 3D Model mesh optimization research"
        "Python. Bug fixes"
      ];
    }
  ];
  projects = [
    {
      name = "Current Location";
      url = "https://github.com/aitvann/current-location";
      description = ''
        A tool I use myself as part of my daily workflow
        to integrate various tools in my system
      '';
    }
    {
      name = "Smart Poselok";
      url = "https://github.com/aitvann/smart-poselok";
      description = ''
        Management system of suburban settlements with
        an extensive role-based access control system
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
        Simple messenger using Rust and Tokio
      '';
      startDate = "2020-01-05";
      endDate = "2020-05-17";
    }
    # {
    #   name = "Visual DB";
    #   url = "https://github.com/aitvann/VisualBD";
    #   description = ''
    #     PostgreSQL database GUI viewer
    #   '';
    #   keywords = [
    #     "C#"
    #   ];
    # }
  ];
  skills = [
    {
      name = "Languages";
      keywords = ["Rust (expert)" "C++" "Clojure" "Nix"];
    }
    {
      name = "Soft Skills";
      keywords = ["Technical mentoring" "Self-directed learning"];
    }
    {
      name = "Ops";
      keywords = ["Linux" "HashiCorp Consul" "Nix (OS, PM, DSL)"];
    }
    {
      name = "FinTech";
      keywords = [];
    }
  ];
  languages = [
    {
      fluency = "Native Speaker";
      language = "Russian";
    }
    {
      fluency = "B2";
      language = "English";
    }
  ];
  interests = [{name = "Open Source";}];
  meta = {
    canonical = "https://github.com/jsonresume/resume-schema/blob/v1.0.0/schema.json";
    version = "v1.0.0";
  };
}
