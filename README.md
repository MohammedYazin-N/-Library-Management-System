## ** Library Management System ( Final MySQL Project)**  

### **📌 Project Overview**  
The **Library Management System** is a MySQL-based project designed to manage a library's operations, including book tracking, customer records, and book issuance/returns. This system efficiently organizes book inventory, employee management, and branch details while ensuring smooth transactions between customers and the library.  

---

### **📂 Database Structure**  
The project consists of the following key tables:  

1. **`Branch`** – Stores branch details, including branch number, manager ID, address, and contact information.  
2. **`Employee`** – Maintains employee records, including their position, salary, and assigned branch.  
3. **`Books`** – Contains book details such as ISBN, title, category, rental price, availability status, author, and publisher.  
4. **`Customer`** – Holds customer information like customer ID, name, address, and registration date.  
5. **`Issue_status`** – Tracks issued books, linking customers with the books they have borrowed, along with the issue date.  
6. **`Return_status`** – Records book returns, including customer details, book title, and return date.  

---

### **📌 Features & Functionalities**  
✅ **Book Management** – Add, update, and remove book records, including availability status.  
✅ **Customer Management** – Store customer details and track their book transactions.  
✅ **Employee & Branch Management** – Maintain employee data and their assigned library branches.  
✅ **Book Issuing & Returning** – Track books issued to customers and their return details.  
✅ **Data Queries & Reporting** – Retrieve useful insights such as:  
   - Books issued by specific customers  
   - Employees managing branches  
   - Branches with the highest number of employees  
   - Customers who haven't issued any books  

---

### **📌 SQL Queries Used**  
✔ **Creating Tables** – `CREATE TABLE` statements with primary and foreign keys.  
✔ **Inserting Data** – `INSERT INTO` statements for populating tables.  
✔ **Retrieving Data** – `SELECT`, `JOIN`, `GROUP BY`, and `HAVING` queries.  

---

### **🛠 Technologies Used**  
🔹 **Database:** MySQL  
🔹 **Query Language:** SQL  
🔹 **Tools:** MySQL Workbench  

---

### **📌 How to Run the Project?**  
1. **Install MySQL** and set up a database.  
2. Run the `CREATE TABLE` scripts to set up the database structure.  
3. Insert sample data using `INSERT INTO` statements.  
4. Execute queries to perform CRUD operations and generate reports.  

---

### **📌 Future Enhancements**  
🚀 Implement a **fine system** for late book returns.  
🚀 Add a **user-friendly frontend** for better interaction.  
🚀 Introduce **automated email notifications** for due books.  

---

### **📩 Contact & Contribution**  
If you have any questions or suggestions, feel free to contribute or reach out! 🎉  
 
