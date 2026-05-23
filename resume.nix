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
    name = "Ivan Aitjanov";
    phone = "+79516598310";
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
      I use Clojure for personal projects and like functional programming in general
    '';
  };
  certificates = [];
  education = [];
  interests = [{name = "Open Source";}];
  languages = [
    {
      fluency = "Native Speaker";
      language = "Russian";
    }
    {
      fluency = "Professional working proficiency";
      language = "English";
    }
  ];
  meta = {
    canonical = "https://github.com/jsonresume/resume-schema/blob/v1.0.0/schema.json";
    version = "v1.0.0";
  };
  projects = [
    {
      description = "Management system of suburban settlements";
      endDate = "2022-06-30";
      name = "Smart Poselok";
      startDate = "2022-04-30";
    }
    {
      description = "PostgreSQL database GUI viewer";
      name = "Visual DB";
    }
  ];
  publications = [];
  references = [];
  skills = [
    {
      keywords = ["Tokio" "Hyper" "Actix Web" "SqlX"];
      name = "Rust";
    }
    {
      keywords = ["C++ 17" "STL"];
      name = "C++";
    }
    {
      keywords = ["PostgreSQL" "Clickhouse" "Apache Kafka"];
      name = "Backend Development";
    }
    {
      keywords = ["Linux" "HashiCorp Consul" "Nix (OS, PM, DSL)"];
      name = "Ops";
    }
    {
      keywords = [];
      name = "FinTech";
    }
    {
      keywords = ["Solana"];
      name = "Blockchain";
    }
  ];
  volunteer = [];
  work = [
    {
      endDate = "2023-10-31";
      highlights = ["Rust" "Clickhouse" "Solana"];
      location = "St Petersburg City, Russia";
      name = "Tradetech";
      position = "Software Engineer";
      startDate = "2021-10-31";
      url = "https://www.linkedin.com/company/85363151";
    }
    {
      endDate = "2021-08-31";
      highlights = ["C++"];
      location = "St Petersburg City, Russia";
      name = "Wargaming";
      position = "Software Engineer";
      startDate = "2021-05-31";
      url = "https://www.linkedin.com/company/127309";
    }
  ];
}
