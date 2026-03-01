#import "@preview/simple-technical-resume:0.1.1": *

#let name = "Kenichiro Goto"
#let phone = "+81 070-2662-9773"
#let email = "kenichiro3114@gmail.com"
#let github = "frinfo702"
#let linkedin = "frinfo702"
#let personal-site = "https://www.frinfo.live"

#show: resume.with(
  top-margin: 0.45in,
  personal-info-font-size: 9.2pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github
)

#custom-title("Education")[
  #education-heading(
    "Ritsumeikan University", "Ibaraki, Osaka, Japan",
    "Bachelor of Science", "College of Information Science and Engineering",
    datetime(year: 2023, month: 4, day: 1),
    datetime(year: 2027, month: 3, day: 1)
  )[
    - GPA: 3.4 / 4.0
    - Relevant Coursework: Operating Systems, Databases, Algorithms, Computer Networks
  ]
]

#custom-title("Experience")[
  #work-heading(
    "Backend Engineer (Internship)",
    "pixiv Inc.",
    "Tokyo, Japan",
    datetime(year: 2025, month: 6, day: 1),
    "Present"
  )[
    - Implement a batch job that updates user statuses across a 100M-row MySQL table, processing records individually to guarantee idempotency and safe partial-failure recovery
    - Eliminate full-table scans on the critical path by tuning indexes until EXPLAIN confirms const-level access
    - *Tech:* Scala 3, Play Framework, MySQL, JavaScript
  ]

  #work-heading(
    "Backend Engineer (Internship)",
    "CyberAgent, Inc. — AbemaTV Division",
    "Tokyo, Japan",
    datetime(year: 2025, month: 8, day: 1),
    datetime(year: 2025, month: 9, day: 1)
  )[
    - Designed and delivered a distributed load-testing platform targeting 100,000 RPS to validate AbemaTV's streaming infrastructure for large-scale live events
    - Automated environment provisioning and teardown with Terraform on GCP, enabling fully reproducible benchmark runs on GKE
    - *Tech:* Go, Terraform, GCP, GKE, Kubernetes
  ]

  #work-heading(
    "Software Engineer (Internship)",
    "Finatext Holdings Ltd.",
    "Tokyo, Japan",
    datetime(year: 2025, month: 5, day: 1),
    datetime(year: 2025, month: 6, day: 1)
  )[
    - Delivered REST APIs for an internal analytics dashboard, enabling analysts and business staff to access financial data without writing SQL
    - Integrated AWS data pipelines to support real-time reporting workflows across the organization
    - *Tech:* Go, AWS, MySQL
  ]
]


#custom-title("Projects")[
  #project-heading(
    "mompiler — C Compiler from Scratch",
  )[
    - Implemented a C subset compiler in C covering tokenization, recursive-descent parsing, AST construction, and x86-64 assembly code generation; supports arithmetic/comparison operators, local variables, and return statements
    - Verified correctness by comparing compiled output against expected exit codes using a golden-test shell script, with CI enforced on every push via GitHub Actions
    - Containerized with Docker for reproducible cross-platform builds targeting Linux/amd64
    - *Tech:* C, x86-64 Assembly, Docker, Make, GitHub Actions
  ]

  #project-heading(
    "Aurelia — Job Board Web Application",
  )[
    - Delivered a full-stack job board with JWT authentication, job listing CRUD, and salary range filtering
    - Structured with clean architecture (domain / handlers / migrations) and containerized using Docker Compose
    - *Tech:* Go, gorilla/mux, PostgreSQL, Docker, JWT
  ]

  #project-heading(
    "claude-deepresearch — AI Deep Research Agent",
  )[
    - Implemented an autonomous research agent powered by Claude API that iteratively searches and synthesizes information into structured reports from a single query
    - *Tech:* Python, Claude API, uv
  ]

]


#custom-title("Skills")[
  #skills()[
    - *Languages:* Go, Scala, Python, TypeScript, C, SQL
    - *Backend & Infra:* Play Framework, Echo, GCP, AWS, Kubernetes, Terraform, Docker, PostgreSQL, MySQL
    - *Other:* PyTorch, Next.js, Git
  ]
]
