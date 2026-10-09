# CampusHire - Viva & Project Defense Guide (For Teacher / Evaluator)

This document contains everything you need to confidently explain and defend your project in college.

---

## 1. Project Technology Stack (Why this is authentic student work)
- **Backend:** Core Java (JDK 17/21) + Java Servlets (Jakarta EE 10 / Tomcat 10)
- **Architecture:** Model-View-Controller (MVC) Pattern
- **Database:** MySQL 8.0 (Relational schema with Foreign Keys & CASCADE)
- **Database Access:** Pure JDBC (`DriverManager`, `PreparedStatement`, `ResultSet`)
- **Security:** `AuthFilter` (`jakarta.servlet.Filter`) + SHA-256 Hashing (`MessageDigest`)
- **Frontend:** HTML5, CSS3, Vanilla JavaScript, JSP (JavaServer Pages)
- **Zero Third-Party Frameworks:** No Spring Boot, No Hibernate, No React, No Angular (strictly aligned with university syllabus constraints).

---

## 2. Top Viva Questions & Exact Answers

### Q1: "Aapne Spring Boot ya Hibernate kyu use nahi kiya?"
> **Answer:**  
> *"Sir, hamare syllabus aur academic objectives ke anusaar, hume Core Java aur Web Architecture ke fundamentals master karne the — jaise Servlet Lifecycle (`init`, `service`, `destroy`), Session tracking, direct JDBC connection management, aur multi-tier architecture. Spring Boot me ye sab auto-configure ho jata hai, isliye humne Core Servlets aur pure JDBC choose kiya taaki hume low-level working samajh aaye."*

### Q2: "Aapne MVC Architecture kaise implement kiya?"
> **Answer:**  
> - **Model (`com.placement.model`):** Plain Java POJOs (jaise `Student.java`, `Job.java`, `Application.java`).
> - **View (`src/main/webapp/WEB-INF/views/`):** JSP files jo data ko render karti hain.
> - **Controller (`com.placement.controller`):** Java Servlets jo HTTP requests handle karti hain, DAOs ko call karti hain, aur JSP par forward karti hain.

### Q3: "JSP files ko `/WEB-INF/views/` ke andar kyu rakha hai?"
> **Answer:**  
> *"Sir, security ke liye. `/WEB-INF/` folder ko client browser directly URL se access nahi kar sakta (jaise direct file path type karke koi bypass nahi kar sakta). Har request ko pehle Servlet aur `AuthFilter` se pass hona padta hai, jo login session aur role verify karta hai."*

### Q4: "SQL Injection se kaise bacha gaya hai?"
> **Answer:**  
> *"Humne pure project me har jagah parameterized **`PreparedStatement`** use kiya hai placeholders (`?`) ke sath. Query database me pre-compile hoti hai aur user input ko strictly data/parameter ki tarah treat kiya jata hai, isliye SQL Injection impossible ho jata hai."*

### Q5: "Passwords ko database me kaise store kiya hai?"
> **Answer:**  
> *"Plain text me nahi, balki **SHA-256** algorithm se hash karke store kiya hai (`PasswordUtil.java` me `java.security.MessageDigest` use karke). Database compromise hone par bhi koi password decrypt nahi kar sakta."*

### Q6: "Tomcat 10 me `jakarta.*` packages kyu use kiye hain?"
> **Answer:**  
> *"Tomcat 10 Jakarta EE 9/10 specifications implement karta hai. Oracle se Eclipse Foundation me transition ke baad namespace `javax.servlet.*` se badalkar `jakarta.servlet.*` ho gaya hai."*

---

## 3. Live Demonstration Sequence for Teachers

1. **Public Homepage (`/`):**
   - Active recruitment drives dikhayein, statistics count dikhayein.
2. **Student Login (`rahul.sharma` / `student123`):**
   - Eligibility check: Job ki minimum CGPA requirement student ki CGPA se match hoti hai to student apply kar sakta hai.
   - Real-time application status track karke dikhayein (Shortlisted, Accepted, etc.).
3. **Company HR Login (`tcs_recruiter` / `company123`):**
   - New Job / Internship post karein.
   - Applicants tab me jakar student ke application ka status update karein.
4. **Admin TPO Login (`admin` / `admin123`):**
   - College-wide statistics aur company approval status manage karein.
   - Placement summary reports view karein.
