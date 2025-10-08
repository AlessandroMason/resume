#import "./layout/utils.typ": *

#let name = "Alessandro Mason"
#let phone = link("tel:+12162589844")[Phone]
#let email = link("mailto:axm2022@case.edu")[Email]
#let github = link("https://github.com/alessandro-mason")[GitHub]
#let linkedin = link("https://linkedin.com/in/alessandro-mason-117417260")[LinkedIn]
#let personal-site = link("https://8080a.com")[Portfolio]
#let author-name = "Alessandro Mason"

#show list: set list(marker: [•], spacing: 0.3em)

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
   #phone |
    #email |
    #personal-site  |
   #linkedin |
    #github
  ]
]

#v(-0.8em)

#category-title(
  "Education",
)[
  #school-container(
    "Case Western Reserve University", "Cleveland, OH", "B.E. Computer Engineering (Junior), 4.0 GPA", "September, 2023", "Ex. May 2027",
  )[
    - *Relevant courses:* Intro to Machine Learning, Software Engineering, Computer Security, Computer Architecture, Algorithms, FPGAs, VLSI/CAD, System Design
    - *Honors:* Dean's High Honors List; averaged 21+ credits/semester
  ]
]



#category-title(
  "Entrepreneurship",
)[
   #job-container(
    "CEO & CFO", "Kayros AI", "AI-powered journaling platform", "July 2022", "Present", "Cleveland, OH", links: [#link("https://k4ros.com/kairos_journaling.html")[Website] /* | #link("https://youtu.be/IltM1Zu2Vi4")['22 Hardware] | #link("tel:+12164807520")[+1 (216) 480-7520] */]
  )[
    - Created a next-token human prediction model, achieving 79% accuracy by leveraging high-quality data.
    - Developed and Mantained a 10,000+ line journaling interface serving 255 daily users before AI vibe coding 
    - Prototyped a 3D ring with BLE electronics and custom firmware; Lead the development of custom PCB.

  ]
   #job-container(
    "CEO & CFO", "Kayros Attendance", "IoT attendance tracking system", "June 2024", "June 2025", "Cleveland, OH", links: [/* #link("https://www.linkedin.com/company/kairos-attendance/")[LinkedIn] | #link("https://youtu.be/5qTS-ZBg_Co")[Demo] | */ #link("https://k4ros.com")[Website]]
  )[
    - Managed a team of 6 supporting 10 university professors and 800+ weekly users, processing 36,757 records. 
    - Designed, built, and manufactured 11 IoT portable scanners. Independently developing a 15k+ line codebase. 
    - Presented 9 pitches to audiences of 400+, securing \$7,000+ in non-dilutive grants.
  ]
]

#category-title(
  "Research ",
)[
  #job-container(
    "MoE/MoA Researcher", "Rice/CWRU AI Research", "Mixture-of-Experts research", "January 2025", "Present", "Cleveland, OH",
  )[
    - Collaborated with Prof. Xu and PhD M.Z. on research in Mixture-of-Experts (MoE) and Attention Experts. 
    - Conducted 100+ experiments on custom MoE models, reducing LLM's energy consumption by 73%. 
    - Engineered HPC training pipelines from 2 to 13 GPUs, reducing cycle time by 67%.
  ]
]

#category-title(
  "Industry",
)[
  #job-container(
    "SWE Intern", "BlueJay (YC X25)", "End-to-end testing for voice agents", "October 2025", "Present", "San Fransisco, CA",
  )[
    - Built a modular-dynamic-parallel LLM framework reducing text generation time by 95% and token usage by 74%.
  ]

  #job-container(
    "AI Systems Engineer Intern", "Tenfold AI (Plug and Play F25)", "Real-time bilingual voice AI interface", "June 2025", "October 2025", "Hsinchu, TW",
  )[
    - Partnered with a team of 4 to build a real-time bilingual voice–voice AI interface with sub-200ms latency. 
    - Delivered to customers the full stack for mobile and web, writing #link("https://www.linkedin.com/posts/alessandro-mason-117417260_four-weeks-in-taiwan-one-vision-27000-activity-7351151185434685442-LJpL")[27,000+ lines of code in under a month]. 
    - Drove efforts that secured Tenfold AI's acceptance into #link("https://www.plugandplaytechcenter.com/press/taiwan-inaugural-batch-cfa")[Plug and Play Taiwan's inaugural batch].
  ]
  

  #job-container(
    "SWE Intern", "Penske", "AI-powered sales training platform", "January 2025", "June 2025", "Cleveland, OH",
  )[
    - Led a team of 6 to build a platform training 35,000+ Penske salesforce; Developed a system of 10+ AI agents. 
    - Optimized compute pipelines using six NVIDIA RTX A6000 GPUs, reducing latency by 30% (\<600ms).
  ]
 
]

#category-title(
  "University Employment",
)[
  #job-container(
    "POS Technical Support", "Point-of-sale maintenance", "", "September 2023", "Present", "Cleveland, OH",
  )[
    - Maintained 7 campus POS locations (5,000+ daily users) 12–14 hrs/week, ensuring 99.9% uptime.
  ]
]
#category-title(
  "Scholarships",
)[
  #awards-container(
    (
     
      
      ([#link("https://engineering.case.edu/research/institutes/great-lakes-energy/2025-2026-fellows-thinkenergy")[ThinkEnergy Fellow] — 1 of 12 selected from 100+ applicants; Interviewed energy executives], "2025"),
      ([#link("https://case.edu/entrepreneurship/fellowships/veale-snyder-fellowship-program")[Veale Snyder Fellow (SF–Prague)] — 1 of 12 selected from 100+ applicants; Interviewed Silicon Valley leaders], "2024"),
      ([Davis Scholar — Full merit scholarship (\$160K) to study 4 years in 50+ U.S. institutions], "2022"),
      ([UWC Scholar — Full merit scholarship (\$80K) to study 2 years in Freiburg (DE); 1 of 2 awarded from Italy], "2020"),
      
    ),
  )
]

#category-title(
  "Fun Projects",
)[
  #awards-container(
    (
       ([#link("https://grandma-s-wisdom.web.app")[\Duolingo App Mock-up] — Rebuilt Duolingo-style app in 48h; 512 upvotes in the r/Duolingo subreddit], "2025"),
       ([CWRU Hackathon Winner — 8th place out of 35 projects. Created a geo-located event scheduler app], "2025"),
       ([\$2K Python Automation — Automated pipeline; 2,000+ videos, 90K+ views], "2019"),
      ([Sports Achievements — 3rd Place, Washington DC Regatta (2024); Marathon Finisher (Freiburg, Padova 2022–2025); Regional Track & Field Champion, 2000m in 6:14 (2018)], ""),
    ),
  )
]


/* #category-title(
  "Skills",
)[
  #set list(spacing: 0.6em)

  - *Languages:* Python, C/C++, Java, TypeScript, Bash, Verilog/VHDL, Dart
  - *Frameworks & Libraries:* PyTorch, TensorFlow, FastAPI, vLLM, React, Svelte, Node.js, Express
  - *Tools & Infrastructure:* AWS, Firebase, HPC (CUDA/SLURM), Git, Docker, Embedded Systems, System Design, Parallel Programming
] */

#align(
  right,
)[
  #text(
    size: 6pt,
  )[
    #link("https://github.com/AlessandroMason/resume")[Built with Typst; Source on GitHub]
  ]
]
