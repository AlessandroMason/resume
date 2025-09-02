#import "./layout/resume.typ": *

#let name = "Wolf Mermelstein"
#let phone = "(212)767-WOLF"
#let email = "wolf@404wolf.com"
#let github = "404Wolf"
#let linkedin = "wolfmermelstein"
#let personal-site = "404wolf.com"

// Custom link function with blue color
#let chref(url, text) = link(url)[#text]

#show: resume.with(
  top-margin: 0.45in, personal-info-font-size: 9.2pt, author-position: center, personal-info-position: center, author-name: name, phone: phone, email: email, website: personal-site, linkedin-user-id: linkedin, github-username: github,
)

#custom-title(
  "Education",
)[
  #education-heading(
    "Case Western Reserve University", "Cleveland, OH", "B.S. Computer Science", "3.93 GPA", none, "Anticipated 2027",
  )[
    - *Relevant courses:* Networks, Linux Tools & Scripting; Algo/Data Structures, OS,
      Persuasion
    - *Experience:* #link(
        "https://case.edu/entrepreneurship/fellowships/veale-snyder-fellows-program",
      )[Veale Snyder Fellow] (entrepreneurship program), Linux Club VP, Board Game
      Club VP
  ]

  #education-heading(
    "Bard Early College", "Queens, NY", "Associates of Arts", "4.00 GPA", datetime(year: 2021, month: 9), datetime(year: 2023, month: 6),
  )[]
]

#custom-title(
  "Awards & Honors",
)[
  - HackCWRU (University Hackathon) First Place #align(right)[February 2024]
  - Case Western ThinkBox Student Project Fund (\$630) #align(right)[October 2023]
  - Bard High School Early College Departmental Nanoscience and Ancient Latin awards #align(right)[May 2023]
  - Microsoft Bug Hunter Acknowledgment #align(right)[March 2022]
  - Hackett Certificate for "greatest proficiency in oratory, either verse or prose" #align(right)[May 2022]
]

#custom-title(
  "Experience",
)[
  #work-heading(
    "Fullstack Software Engineer", "Val Town", "Internship", datetime(year: 2025, month: 5), "Present", "Brooklyn, New York, United States · On-site",
  )[
    Easy, fun, & instant serverless Javascript functions.

    - Designed and wrote our CLI companion
    - Integrated the Deno (typescript) language server into our codemirror web editor
    - Helped architect and implement custom K8s load balancing system
    - Worked on backend redesign to enable higher throughput with clustering, and
      eventual WebSocket support
  ]

  #work-heading(
    "Participant", "Recurse Center", "Brooklyn-based self-led coding retreat", datetime(year: 2023, month: 6), datetime(year: 2024, month: 8), "NYC & Remote",
  )[
    - *Personal Website* (#link("https://404wolf.com")[site], #link("https://github.com/404wolf/404wolf.com")[code])
      Designed website with TS/TSX, React, & tailwind. Implemented custom post editing
      system with Postgres/Prisma-OR
    & S3 to store/fetch/render posts (w/REST CRUD). Wrote (TS) backup and migration
    scripts. Created special markdown parsing system with custom Rehype plugins.
    Wrote Obsidian plugin to sync/edit blogs.

    - *NixOS & Nix Builds*
      Contributed to #link("https://github.com/NixOS/nixpkgs")[nixpkgs]. Configured
      NixOS desktop system from scratch
    w/Hyprland, home-manager, and other extensive customizations. Learned Nix
    language/packaging binaries & various programs. Working on project to dockerize
    Android emulators with Nix docker tools
    #link("https://github.com/404Wolf/android-docker")[(code)].

    - *Generated Vocab Cards* #link("https://github.com/orgs/Logophilio/repositories")[(code)]
      Created Python Django server to merge Webster, OpenAI, and other API data into
      elegant English Vocab flashcard
    PDFs. Made system to generate vector art using template SVGs and Chrome Devtools
    Protocol.
  ]

  #work-heading(
    "Co-founder; Solo Software Engineer; Sales Manager", "Minecraft Name Autoclaiming", "Online self-run business", datetime(year: 2021, month: 6), datetime(year: 2022, month: 7), "Remote",
  )[
    - *Software Engineer*
      Developed system w/Python to autoclaim desirable Minecraft usernames at moment
      of release. Automated server
    deployment and account distribution for 50-80 accounts. Implemented automatic
    name queue, server-setup scripts, AioHT Swagger-Spec'ed management server, and
    admin interface. Utilized Vultr API for server deployment and AsyncSSH for aut &
    SFTP.

    - *Sales Management*
      Facilitated sales process and auctions for over 100 buyers, generating \$6,000+
      in revenue with around 200 uniqu
    accounts sold. Maintained consistently positive customer feedback and regular
    reorders.
  ]
]

#custom-title(
  "Projects",
)[
  #project-heading(
    "DNA Nanotube Designer Tool (\"NATuG\")",
  )[
    #link("https://404wolf.com/posts/project/DNANanotubes")[blog],
    #link(
      "https://wolf-mermelstein-personal-website.s3.us-east-2.amazonaws.com/programOverview_0001_0001_0001.webm",
    )[dem , #link("https://github.com/NATuG3/NATuG3")[code]

      DNA nanotechnology academic research project. Developed interactive PY-QT
      desktop app to streamline geometrically constrained DNA nanotube design.
      Collaborated w/bionanotechnologist to create important algorithms like
      determining helix strand switch behavior on junction clicks. Designed export
      file format. Wrote manual and began working on scholarly paper. ]

    #project-heading(
      "Coin Sorting Bot",
    )[
      #link("https://404wolf.com/posts/project/coinSortBot")[blog],
      #link("https://github.com/orgs/Coin-Sort-Bot/repositories")[code]

      Robot to sort coins by date. 3D printed body with mechanism that sends coins
      down chute to photo them and deflect into canisters. Django/S3 backend for
      processing.
    ]

    #project-heading(
      "Android in the Browser",
    )[
      #link("https://404wolf.com/posts/project/androidBrowser")[blog],
      #link("https://github.com/404Wolf/Browser-Phone")[code]

      Developed toolchain to stream Android to browsers over WebRTC w/Janus Gateway
      for low-latency video stream. Using Nix for Android packaging, React for
      frontend, Bun for APIs, and Android development tools. Goal is interactive Andro
      in browser w/simple React components.
    ]

    #project-heading(
      "CWRU Food Finder",
    )[
      #link("https://404wolf.com/posts/project/freeCwruFood")[blog], #link("https://free-cwru-food.404wolf.com/")[demo]
      #link("https://free-cwru-food.404wolf.com/")[code]

      Website using fine-tuned OpenAI model w/Google Cloud Run & MongoDB automated
      workflow to scrape on-campus events categorize by free food. Includes
      MUI/React/NextJS frontend. Uses puppeteer to scrape additional event details.
      2024 1st place university hackathon project. About 50 visitors/month.
    ]
  ]
]

#custom-title(
  "Skills",
)[
  #skills(
    )[
    - *Languages:* Python, TypeScript/JavaScript, Java, Bash, Nix, Lua, Golang, AWK,
      Scheme/Racket, C/C++, HTML & CSS
    Markdown & LaTeX, Typst

    - *Tools:* Nix & NixOS, Linux, Docker, NextJS & NextAuth, Numpy & Pandas, Prisma,
      Django, PyQt & PyQtGraph,
    Asyncio, Unified/Remark & Rehype, Git, S3, AWS, Fusion 360, Janus Gateway &
    WebRTC, React/React Native, Tailwind, Mui Adobe Illustrator & Photoshop, MS
    Office, (neo)Vim, Redis, JQ, CLI tooling

    - *Miscellaneous:* Object-oriented, functional, Web development, 110+ WPM Typing,
      CPR Certified (2022). Fast
    learner, creative, good communicator.
  ]
]

#align(
  right,
)[
  #text(
    size: 6pt,
  )[
    #link("https://github.com/404wolf/resume")[Built with Nix; Source on GitHub]
  ]
]
