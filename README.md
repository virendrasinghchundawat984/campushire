<h1 align="center">🎓 CampusHire</h1>
<h3 align="center">Enterprise Campus Placement & Internship Management System</h3>

<p align="center">
  A full-featured, secure, and production-ready enterprise placement management platform built with <strong>Core Java 17 LTS, Jakarta Servlets 6.0, JSP 3.1, Apache Tomcat 10.1, and MySQL / TiDB Cloud Serverless</strong>.
</p>

<p align="center">
  <a href="https://campushire-fdo8.onrender.com/"><img src="https://img.shields.io/badge/🚀_Live_Demo-Render_Cloud-brightgreen?style=for-the-badge&logo=render" alt="Live Demo"></a>
  <img src="https://img.shields.io/badge/Java-17_LTS-orange?style=for-the-badge&logo=openjdk" alt="Java 17">
  <img src="https://img.shields.io/badge/Servlet-Jakarta_6.0-red?style=for-the-badge&logo=jakartaee" alt="Jakarta Servlets">
  <img src="https://img.shields.io/badge/Server-Apache_Tomcat_10.1-yellow?style=for-the-badge&logo=apachetomcat" alt="Tomcat 10">
  <img src="https://img.shields.io/badge/Database-MySQL_8.0_%7C_TiDB-blue?style=for-the-badge&logo=mysql" alt="MySQL">
  <img src="https://img.shields.io/badge/Uptime-99.9%25-success?style=for-the-badge" alt="Uptime">
  <img src="https://img.shields.io/badge/Team_Size-5_Engineers-purple?style=for-the-badge" alt="Team Size">
</p>

---

## 🌐 Live 24/7 Cloud Deployment

The application is deployed on cloud infrastructure and accessible 24/7 worldwide:
* **Live Web Application:** [https://campushire-fdo8.onrender.com/](https://campushire-fdo8.onrender.com/)
* **Cloud Persistence:** TiDB Cloud Serverless MySQL (Distributed High-Availability Cluster)
* **Localhost URL (When running locally):** `http://localhost:8080/placement/`

---

## 👥 Team Members and Responsibilities

| Team Member | GitHub Profile | Responsibility | Contribution Notes |
| :--- | :---: | :--- | :--- |
| **Rahul Tailor** | [GitHub](https://github.com/rahultailorofficial01) | Frontend Development: HTML, CSS, JavaScript | UI development and page design |
| **Yash Kumar** | [GitHub](https://github.com/yashkumar-25) | Project Documentation | SRS, research paper, PPT, and project report |
| **Vaibhav Charan** | [GitHub](https://github.com/vaibhavcharan5555-collab) | Java Backend Development: Servlet/JSP | Backend logic and request handling |
| **Virendra Singh Chundawat** | [GitHub](https://github.com/virendrasinghchundawat984) | Database Design and Connectivity: MySQL/JDBC | Database schema and connectivity |
| **Udit Bhardwaj** | [@Uditbhardwajj](https://github.com/Uditbhardwajj) | Testing, GitHub Management, and Integration | Testing, version control, repository management, and code integration |

---

## 🎯 Project Overview & Problem Solved

Traditional campus placement drives rely heavily on manual spreadsheets, offline paper resumes, and fragmented email communications. This leads to:
* **Eligibility calculation errors:** Ineligible students accidentally applying or missing cutoffs.
* **Recruiter bottlenecks:** Corporate HR teams having no self-service dashboard to manage candidate screening rounds.
* **Administrative overload:** Training & Placement Officers (TPO) spending hundreds of hours consolidating data.

**CampusHire** solves this by establishing a decentralized, three-tier role-based portal automating the entire placement lifecycle from registration to final offer rollout.

---

## ✨ Key Features by User Role

### 🎓 1. Student Portal
* **Automated Eligibility Engine:** The system checks registered student CGPA against company cutoffs ($CGPA \ge Cutoff$) and branch criteria in real time. Ineligible students are blocked with transparent feedback.
* **One-Click Application:** Apply for open jobs and internships instantly without re-entering profile details.
* **Real-Time Application Tracking:** Track multi-stage application progression: `PENDING` &rarr; `SHORTLISTED` &rarr; `INTERVIEW_SCHEDULED` &rarr; `ACCEPTED` / `REJECTED`.
* **Profile & Cloud Resume:** Maintain verified academic records, roll number, graduation batch, and cloud resume links.

### 🏢 2. Corporate Recruiter Portal
* **Self-Service Drive Publishing:** Create job and internship listings specifying CTC package, job description, allowed departments, and minimum CGPA cutoffs.
* **Applicant Screening Pipeline:** Review applied candidates, examine candidate CGPA and resume URLs, and filter by branch.
* **Multi-Stage Candidate Evaluation:** Transition candidates through the recruitment state machine and schedule technical/HR interview rounds with remarks.

### 🛡️ 3. Training & Placement Officer (Admin / TPO)
* **Real-Time Placement Analytics:** Monitor department-wise placement percentages, total offers made, average CTC, and highest packages.
* **Recruiter Verification:** Audit and approve registered company profiles before they can publish campus drives.
* **Complete Oversight:** Manage student and recruiter accounts, inspect drive statuses, and export placement records.

---

## 🏗️ System Architecture & Workflow

The project is built on the classic **Three-Tier Model-View-Controller (MVC)** design pattern without heavy third-party framework overhead:

```text
+-------------------------------------------------------------------------+
|                           Presentation Tier                             |
|          HTML5, Modern CSS3 (Flexbox/Grid), JavaScript, Dynamic JSP     |
+-------------------------------------------------------------------------+
                                    │
                             HTTP GET / POST
                                    ▼
+-------------------------------------------------------------------------+
|                       Application & Controller Tier                     |
|                                                                         |
|  1. AuthFilter (Jakarta Servlet Filter - Role-Based Access Control)     |
|  2. Controller Servlets (Login, Register, Student, Company, Admin)      |
|  3. Cryptographic Layer (java.security.MessageDigest - SHA-256 Hashing) |
|  4. Session Manager (HttpSession & Secure JSESSIONID)                   |
+-------------------------------------------------------------------------+
                                    │
                             DAO Pattern / POJO
                                    ▼
+-------------------------------------------------------------------------+
|                          Data Persistence Tier                          |
|                                                                         |
|  1. Parameterized JDBC Layer (PreparedStatement - 100% SQLi Defense)    |
|  2. Connection Management (DBConnection Utility)                        |
|  3. Relational Database (MySQL 8.0 Community / TiDB Cloud Serverless)   |
+-------------------------------------------------------------------------+
```

### 🔄 Finite State Machine (FSM) Candidate Lifecycle:
$$\text{PENDING} \xrightarrow{\text{Recruiter Screening}} \text{SHORTLISTED} \xrightarrow{\text{Interview Scheduled}} \text{INTERVIEW\_SCHEDULED} \xrightarrow{\text{Final Decision}} \begin{cases} \text{ACCEPTED} \\ \text{REJECTED} \end{cases}$$

---

## 🛠️ Technology Stack

| Layer | Technology | Specification / Details |
| :--- | :--- | :--- |
| **Language** | Java (JDK 17 LTS / JDK 25) | Pure Core Java, Object-Oriented Design, Cryptography |
| **Backend Framework** | Jakarta Servlet API 6.0 | Modern Jakarta namespace (`jakarta.servlet.*`) |
| **Presentation** | JavaServer Pages (JSP 3.1) | Protected views in `/WEB-INF/views/` (OWASP Compliant) |
| **Web Server** | Apache Tomcat 10.1.60 | High-performance Jakarta EE 10 Servlet Container |
| **Database** | MySQL 8.0 & TiDB Cloud | 3NF Normalized Relational Schema, TLS 1.3 connectivity |
| **Database Driver** | MySQL Connector/J 8.3.0 | Pure Java Type-4 JDBC Driver |
| **Security** | SHA-256 Hashing & RBAC | One-way hashing, parameterized queries, `AuthFilter` |
| **Cloud Hosting** | Render.com PaaS & Docker | Multi-stage Docker container with automated keep-alive |
| **Development** | Microsoft VS Code | Automated Build Tasks (`Ctrl+Shift+B`) |

---

## 📁 Project Directory Structure

```text
campushire/
├── .github/
│   └── workflows/
│       └── keep-alive.yml            # Automated GitHub Actions keep-alive ping
├── database/
│   └── placement_system.sql          # Complete 3NF SQL schema & seed dataset
├── src/
│   └── main/
│       ├── java/com/placement/
│       │   ├── model/                # POJO Domain Entities (User, Student, Job, etc.)
│       │   ├── dao/                  # Data Access Objects (UserDAO, StudentDAO, JobDAO, etc.)
│       │   ├── filter/               # Security Interceptor (AuthFilter.java)
│       │   ├── servlet/              # HTTP Controllers (Login, Student, Company, Admin)
│       │   └── util/                 # DBConnection & PasswordUtil (SHA-256)
│       ├── resources/
│       │   └── db.properties         # Database connection properties
│       └── webapp/
│           ├── WEB-INF/
│           │   ├── web.xml           # Servlet mapping descriptor
│           │   ├── lib/              # mysql-connector-j.jar
│           │   └── views/            # Shielded JSP templates (student, company, admin)
│           ├── css/style.css         # Responsive styling
│           └── index.jsp             # Public landing portal
├── .vscode/                          # VS Code tasks & workspace configuration
├── build.bat / build.ps1             # 1-Click build & Tomcat deployment script
├── start-tomcat.bat / stop-tomcat.bat# Local server management scripts
├── Dockerfile                        # Multi-stage production container build
└── pom.xml                           # Maven project configuration
```

---

## 🔑 Pre-Seeded Demo Login Credentials

You can test every role in the system using the following pre-seeded test accounts:

| Role | Username / Email | Password | Access Privileges |
| :--- | :--- | :--- | :--- |
| **🛡️ Admin (TPO)** | `admin` *(or `admin@college.edu`)* | **`admin123`** | Full placement control, approvals, analytics |
| **🏢 Recruiter 1 (TCS)** | `tcs_recruiter` *(or `hr@tcs-careers.com`)* | **`company123`** | Post drives, review candidates, schedule interviews |
| **🏢 Recruiter 2 (Infosys)**| `infosys_recruiter` *(or `campus@infosys.com`)* | **`company123`** | Post drives, evaluate applicants |
| **🎓 Student 1 (Rahul)** | `rahul.sharma` *(or `rahul.sharma@college.edu`)* | **`student123`** | CSE branch, 8.65 CGPA, sample applications |
| **🎓 Student 2 (Priya)** | `priya.verma` *(or `priya.verma@college.edu`)* | **`student123`** | CSE branch, 9.15 CGPA, placed candidate |

---

## ⚡ How to Run Locally in VS Code

### 1. Prerequisites
* **JDK 17, 21, or 25**
* **Apache Tomcat 10.1** (Installed at `C:\apache-tomcat-10.1.60`)
* **MySQL Server** (or use the configured TiDB Cloud database)

### 2. VS Code 1-Click Build & Run:
1. Open this project in **VS Code**.
2. Press **`Ctrl + Shift + B`** (or go to **Terminal** &rarr; **Run Task** &rarr; **`CampusHire: Build & Deploy`**).
   * This compiles all 22 Java source files, bundles `placement.war`, and deploys it to Tomcat.
3. Start Tomcat via **Terminal** &rarr; **Run Task** &rarr; **`CampusHire: Start Tomcat Server`** (or double-click `start-tomcat.bat`).
4. Open your browser and navigate to:
   ```text
   http://localhost:8080/placement/
   ```

---

## 🛡️ Security Engineering

* **Zero Plaintext Passwords:** Evaluated using native `java.security.MessageDigest` SHA-256 cryptographic one-way hashing with zero third-party dependencies.
* **100% SQL Injection Defense:** Every database interaction is executed through strictly parameterized `java.sql.PreparedStatement` calls. Zero SQL string concatenations exist in the codebase.
* **Protected View Architecture:** Raw JSP files reside inside `/WEB-INF/views/`, neutralizing direct URL traversal attacks (OWASP Broken Access Control compliance).
* **Role-Based Filter Interception:** `AuthFilter` validates every route. Unauthorized access attempts automatically redirect to `login.jsp` with flash alerts.

---

## 📄 Academic Research & Documentation

* **SRS Document (IEEE Std 830-1998):** Complete 7-section software requirements specification with 3NF schema, test matrix, and sign-off blocks.
* **4-Year Literature Review (2021–2025):** Comparative empirical evaluation across 7 peer-reviewed Google Scholar and IEEE publications.

---

## 📜 License & Acknowledgments

This project was developed for the B.Tech Computer Science & Engineering Major Project curriculum.  
Open-source under the **MIT License**.
