# UEFA Champions League FAQ Database

## 📌 About the Project  
This project implements a **relational database** in **MySQL** to manage a **Frequently Asked Questions (FAQ) system** focused on the **UEFA Champions League**.  
The database supports **questions, answers, teams, players, matches, and editions**, allowing structured queries and advanced data management.  

---

## 🛠 Technologies Used  
- **MySQL**  
- **SQL Stored Procedures, Functions, Views, and Triggers**  

---

## 📂 Database Implementation  
The project consists of several structured SQL components:  

### **1️⃣ Database Schema** (`create.sql`)  
- Defines all tables, **relationships, constraints, primary keys, and foreign keys**.  

### **2️⃣ Logical Components** (`logic.sql`)  
- **5+ Views** to facilitate data queries.  
- **2+ Stored Functions** to perform key calculations.  
- **10+ Stored Procedures** to automate data operations.  
- **2+ Triggers** to handle data consistency and automation.  

### **3️⃣ Data Population** (`populate.sql`)  
- Inserts a **minimum of 20 records per table**, ensuring comprehensive data for testing.  

### **4️⃣ Query Execution** (`queries.sql`)  
- Implements various **search and retrieval operations** for **users, sessions, questions, answers, matches, and teams**.  

### **5️⃣ Functional Testing** (`test.sql` & `test_triggers.sql`)  
- Scripts designed to validate all **stored procedures, views, and triggers**.  

---

## ⚽ Key Features  
✔ **User and admin management** with authentication.  
✔ **Session tracking**, including login timestamps, IPs, and device types.  
✔ **Question and answer system**, supporting predefined and user-generated content.  
✔ **Football data integration**, storing **matches, players, teams, and winners**.  
✔ **Advanced queries**, including statistics, session analytics, and search history.  

 

 
