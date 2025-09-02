#import "./layout/utils.typ": *

#let name = "Wolf Mermelstein"
#let phone = "(212)767-WOLF"
#let email = "wolf@404wolf.com"
#let github = "github.com/404Wolf"
#let linkedin = "linkedin.com/in/wolfmermelstein"
#let personal-site = "404wolf.com"

#let author-name = "Wolf Mermelstein"

#set document(
  title: "Résumé | " + author-name, author: author-name, keywords: "cv", date: none,
)

#show link: set text(fill: rgb("#0010c3"))

#set par(leading: 0.4em)
#set list(indent: 0.2em, spacing: 0.7em)

#set page(
  paper: "us-letter", margin: (top: 0.3in, bottom: 0.2in, left: 0.3in, right: 0.3in),
)

#set text(font: "New Computer Modern", size: 11pt, lang: "en", ligatures: false)

#align(center, [
  #text(25pt, weight: "extrabold")[#author-name]
  #v(-1.6em)
])

#align(center)[
  #text(9.2pt)[
    #link("tel:" + phone)[#phone] |
    #link("mailto:" + email)[#email] |
    #link("https://" + personal-site)[#personal-site] |
    #link("https://" + linkedin)[#linkedin] |
    #link("https://" + github)[#github]
  ]
]

#v(-0.8em)

#category-title(
  "Education",
)[
  #school-container(
    "Case Western Reserve University", "Cleveland, OH", "B.S. Computer Science, 3.93 GPA", "September, 2023", "Anticipated 2027",
  )[
    - *Relevant courses:* Networks, Linux Tools & Scripting; Algo/Data Structures, OS,
      Persuasion
    - *Experience:* #link(
        "https://case.edu/entrepreneurship/fellowships/veale-snyder-fellows-program",
      )[Veale Snyder Fellow] (entrepreneurship program), Linux Club VP, Board Game
      Club VP
  ]

  #school-container(
    "Bard Early College", "Queens, NY", "Associates of Arts, 4.00 GPA", "September, 2021", "June, 2023",
  )[]
]

#v(1.9em)

#category-title(
  "Awards & Honors",
)[
  #awards-container(
    (
      ([HackCWRU (University Hackathon) First Place], "February 2024"), ([Case Western ThinkBox Student Project Fund (\$630)], "October 2023"), ([Microsoft Bug Hunter Acknowledgment], "March 2022"),
    ),
  )
]

#v(0.3em)

#category-title(
  "Experience",
)[
  #job-container(
    "Fullstack Software Engineer", "Val Town", "Easy, fun, & instant serverless Javascript functions.", "May 2025", "Present", "NYC",
  )[
    - Designed and wrote our #link("https://github.com/val-town/vt")[CLI companion].
      Integrated the Deno (typescript) language server into our codemirror web editor
      (#link("https://github.com/val-town/vtlsp")[lib]). Helped architect and
      implement custom K8s load balancing system. Worked on backend redesign to enable
      higher throughput with clustering, and eventual WebSocket support.
  ]

  #job-container(
    "Participant", "Recurse Center", "Brooklyn-based self-led coding retreat", "June 2023", "August 2024", "NYC & Remote",
  )[
    - *NixOS / Nix Builds*
      Contributed to #link("https://github.com/NixOS/nixpkgs")[nixpkgs]. Configured
      NixOS desktop system from scratch w/Hyprland, home-manager, and other extensive
      customizations. Learned Nix language/packaging binaries & various programs.
      Working on project to dockerize Android emulators with Nix docker tools #link("https://github.com/404Wolf/android-docker")[(code)].
    - *Generated Vocab Cards* #link("https://github.com/orgs/Logophilio/repositories")[(code)]
      Created Python Django server to merge Webster, OpenAI, and other API data into
      elegant English Vocab flashcard PDFs. Made system to generate vector art using
      template SVGs and Chrome Devtools Protocol.
  ]

  #job-container(
    "Co-founder; Solo Software Engineer; Sales Manager", "Minecraft Name Autoclaiming", "Online self-run business", "June 2021", "July 2022", "Remote",
  )[
    - *Software Engineer*
      Developed system w/Python to autoclaim desirable Minecraft usernames at moment
      of release. Automated server deployment and account distribution for 50-80
      accounts. Implemented automatic name queue, server-setup scripts, AioHTTP
      Swagger-Spec'ed management server, and admin interface. Utilized Vultr API for
      server deployment and AsyncSSH for automation & SFTP.
    - *Sales Management*
      Facilitated sales process and auctions for over 100 buyers, generating \$6,000+
      in revenue with around 200 unique accounts sold. Maintained consistently
      positive customer feedback and regular reorders.
  ]
]

#category-title(
  "Projects",
)[
  #project-container(
    (
      ("blog", "https://404wolf.com/posts/project/DNANanotubes"), (
        "demo", "https://wolf-mermelstein-personal-website.s3.us-east-2.amazonaws.com/programOverview_0001_0001_0001.webm",
      ), ("code", "https://github.com/NATuG3/NATuG3"),
    ), "DNA Nanotube Designer Tool (\"NATuG\")",
  )[
    DNA nanotechnology academic research project. Developed interactive PY-QT
    desktop app to streamline geometrically constrained DNA nanotube design.
    Collaborated w/bionanotechnologist to create important algorithms like
    determining helix strand switch behavior on junction clicks. Designed export
    file format. Wrote manual and began working on scholarly paper.
  ]

  #project-container(
    (
      ("blog", "https://404wolf.com/posts/project/freeCwruFood"), ("demo", "https://free-cwru-food.404wolf.com/"), ("code", "https://github.com/404Wolf/free-cwru-food"),
    ), "CWRU Food Finder",
  )[
    Website using fine-tuned OpenAI model w/Google Cloud Run & MongoDB automated
    workflow to scrape on-campus events and categorize by free food. Includes
    MUI/React/NextJS frontend. Uses puppeteer to scrape additional event details.
    2024 1st place university hackathon project. About 50 visitors/month.
  ]
]

#category-title(
  "Skills",
)[
  #set list(spacing: 0.6em)

  - *Languages:* Python, TypeScript/JavaScript, Java, Bash, Nix, Go, Rust, Lua,
    Scheme/Racket, C/C++, HTML & CSS, Markdown & LaTeX, Typst
  - *Tools:* Nix & NixOS, Linux, Containers, Modern web frameworks (React, Next,
    React-router, Tailwind, Prisma/Drizzle, remark/rehype, etc), Modern python
    frameworks (numpy, pandas, django, PyQt/PyQtGraph, etc), Modern database systems
    (Postgres, Clickhouse, Redis/keyval), General devtools (Git, github workflows,
    gnu, etc), AWS (s3, ec2, etc), Janus Gateway & WebRTC, (neo)Vim wizard
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
