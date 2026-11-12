#import "@preview/basic-resume:0.2.10": *

// Personal information
#let name = "Olim Saidov"
#let location = "Tashkent, Uzbekistan"
#let email = "olim.mail@gmail.com"
#let github = "github.com/olimsaidov"
#let linkedin = "linkedin.com/in/olim-saidov-264898125"
#let phone = "+998 (97) 442-9982"
#let personal-site = ""

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Work Experience

#work(
  title: "Software Engineer",
  location: "San Pedro, Los Angeles, US",
  company: "Health Samurai",
  dates: dates-helper(start-date: "Mar 2024", end-date: "Oct 2026"),
)
- Developed Aidbox Forms, a medical form building application based on the FHIR SDC standard
- Built a pipeline digitizing paper medical forms into FHIR questionnaires via OCR and LLM extraction
- Created the FHIRPath Editor: parsing, static type analysis, and visual expression authoring
- Engineered the AI Assistant for FHIR SDC and Analytics, winner at the 2025 HL7 AI Challenge
- Shipped Voice Agent: captures answers from conversations, looks up clinical codes, and keeps source evidence alongside generated answers

#work(
  title: "Chief Technology Officer",
  location: "Tokyo, Japan",
  company: "ZeroOne Inc",
  dates: dates-helper(start-date: "Feb 2021", end-date: "Dec 2023"),
)
- Developed ZeroOne (former Jidoca), a low-code platform for building web applications
- Built a Kubernetes-native backend that auto-provisions resources for low-code applications, driven by Helm charts
- Implemented multi-tenancy for an open-source fork of the n8n workflow automation software

#work(
  title: "Software Engineer",
  location: "San Pedro, Los Angeles, US",
  company: "Health Samurai",
  dates: dates-helper(start-date: "Apr 2020", end-date: "Feb 2021"),
)
- Developed Billogica, a medical billing platform, using Clojure and ClojureScript with a Re-frame/Reagent frontend
- Built the product's design system and reusable component library, including grid-based forms for complex insurance claim details

#work(
  title: "Lead Software Engineer",
  location: "Tashkent, Uzbekistan",
  company: "Kash App",
  dates: dates-helper(start-date: "Apr 2018", end-date: "Mar 2020"),
)
- Created eJarima, a national traffic violation monitoring and reporting platform for the government with UNDP funding, crowdsourcing violation reports from citizens. Built the large-scale distributed video transcoding and CDN delivery behind it, plus comprehensive audit logging and privacy controls, in Clojure
- Led development of Pay Kash, a multi-tenant international money remittance service, a business-critical high-throughput GraphQL API coordinating multiple parties across dozens of third-party integrations
- Delivered Tanga, a Stellar-based money exchange service with a mobile app in React Native, integrating payment and blockchain APIs

#work(
  title: "Lead Software Engineer",
  location: "Tashkent, Uzbekistan",
  company: "NowMedia Technologies",
  dates: dates-helper(start-date: "Jun 2017", end-date: "Apr 2018"),
)
- Developed the backend of Lamuz, a music streaming service, and its billing system using the PHP stack
- Implemented a high-performance music search engine on Elasticsearch
- Built a personalized music recommendation system on Prediction.io, applying collaborative filtering to user listening histories stored in MongoDB

#work(
  title: "Lead Software Engineer",
  location: "Tashkent, Uzbekistan",
  company: "Creative People",
  dates: dates-helper(start-date: "Feb 2014", end-date: "Jun 2017"),
)
- Developed OX POS, a multi-tenant platform automating retail chain operations, from inventory management to in-store workflows
- Designed the REST API on PHP Symfony 2/3, running on Postgres with Elasticsearch for search and analytics
- Built the React/Redux SPA frontend as an early adopter of React
- Created an asynchronous PHP WebSocket server (Ratchet) over RabbitMQ for real-time collaborative stocktaking, and open-sourced the team's Symfony SQL bundle

#work(
  title: "Freelance Developer",
  location: "Samarkand, Uzbekistan",
  company: "Freelance",
  dates: dates-helper(start-date: "May 2008", end-date: "Feb 2014"),
)
- Delivered database-driven web applications on PHP/MySQL and Windows desktop software in Delphi, including low-level reverse engineering and WinAPI work

== Projects

#project(
  name: "macrocss",
  role: "Author",
  url: "github.com/healthsamurai/macrocss",
)
- css-in-js library for clojurescript, heavily inspired by tailwind css

#project(
  name: "formbox-renderer",
  role: "Author",
  url: "github.com/HealthSamurai/formbox-renderer",
)
- fhir sdc-conformant headless questionnaire engine; extensible ui rendering

#project(
  name: "icdp",
  role: "Author",
  url: "github.com/olimsaidov/icdp",
)
- implements the chrome devtools protocol in the browser, driving iframe documents as debug targets

== Speaking

- Low-code FHIRPath tools for clinical form designers — FHIR SDC Conference 2025, #link("https://www.health-samurai.io/events/sdc-conference-2025")[health-samurai.io/events/sdc-conference-2025]
- AI-assisted FHIR questionnaire and ViewDefinition authoring — SQL on FHIR Conference 2025, #link("https://www.health-samurai.io/events/fhir-analytics-2025")[health-samurai.io/events/fhir-analytics-2025]
- Voice-driven FHIR questionnaire scribe with Pydantic AI and Jev — Agents on FHIR, Oct 2026, #link("https://www.health-samurai.io/events/agents-on-fhir/2026-10-01-meeting")[health-samurai.io/events/agents-on-fhir/2026-10-01-meeting]

== Education

#edu(
  institution: "Tashkent University of Information Technologies",
  location: "Tashkent, Uzbekistan",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Present"),
  degree: "PhD Candidate in Computer Science",
  consistent: true,
)

#edu(
  institution: "Tashkent University of Information Technologies",
  location: "Tashkent, Uzbekistan",
  dates: dates-helper(start-date: "Sep 2011", end-date: "Jul 2013"),
  degree: "Master's in Information Systems",
  consistent: true,
)

#edu(
  institution: "Tashkent University of Information Technologies",
  location: "Samarkand, Uzbekistan",
  dates: dates-helper(start-date: "Sep 2006", end-date: "Jul 2010"),
  degree: "Bachelor's in Information Technologies",
  consistent: true,
)

== Skills
- *Programming Languages*: Clojure, ClojureScript, TypeScript, JavaScript, PHP, Python
- *Frameworks*: React, React Native, Re-frame, Reagent, Symfony, Yii, Laravel, Next.js, Nest.js, Svelte, SvelteKit
- *AI & LLMs*: agents, harnesses, MCP, OCR, speech pipelines
- *Healthcare*: FHIR (SDC, R4/R5), OMOP CDM, openEHR
- *Technologies*: PostgreSQL, Elasticsearch, Redis, RabbitMQ, MongoDB, GraphQL, Docker, Kubernetes, Helm, Stellar
- *Languages*: Uzbek (native), Russian (fluent), English (C1)
