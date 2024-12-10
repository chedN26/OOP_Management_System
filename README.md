 **FINAL PROJECT DOCUMENTATION**

## **DueDeet: Tenant Management and Billing Solution**

CS211: OBJECT-ORIENTED PROGRAMMING

Submitted By:

GARCIA, CHED NEO H. 

IT – 2106



<br>

## 1. **PROJECT OVERVIEW**

The Tenant Management and Utility Billing Solution exists to address the challenges faced in managing rental properties, particularly in maintaining accurate and timely billing for tenants. It was created in response to personal frustrations with inconsistencies in monthly billings—such as delays and inaccurate meter readings—that impacted the rental experience. The system centralizes the management of essential tenant information, including rent and utility bills (e.g., water, electricity, and internet), ensuring that billing is accurate and timely. By providing a platform that tracks utility readings and automates the billing process, the system eliminates the potential for errors and ensures a smooth experience for both tenants and apartment managers.

The primary goal of the system is to eliminate billing inefficiencies, offer transparency in charges, and improve tenant satisfaction by providing a reliable and consistent method for billing. It supports the university's mission by promoting innovation in problem-solving and offering an example of a technological solution that addresses real-world challenges. The system reflects the university's commitment to producing leaders who can apply creative solutions to problems, and contributing to sustainable development by enhancing the rental management process in a modern, efficient manner.

<br>

## 2. **OOP PRINCIPLES**

**Encapsulation**

In this program, the encapsulation is achieved by organizing data and behavior using private fields, for example, GUI components like txtWaterConsume, txtRent, etc. and providing controlled access through setters and getters.

*Setters*

The text fields' values are set or reset using methods like txtWaterConsume.setText() or txtUnit.setEditable(true). This encapsulates direct access to these components, controlling how data is manipulated.

*Getters*

Values are retrieved from fields like txtUnit.getText() and validated before processing. This ensures controlled access to private fields, maintaining data integrity.

-----
**Inheritance**

Inheritance is implemented in this program by extending the javax.swing.JFrame class. This allows the Main class to inherit JFrame functionalities, such as handling GUI operations. The program customizes JFrame to meet the requirements of the application, illustrating code reuse and hierarchical relationships.

-----
**Polymorphism**

Polymorphism is used in the following parts of the code:

*Method Overloading*

The methodS DatabaseUtility.mysqlQuery and DatabaseUtility.fetchData which are imported from another java class appear to accept different parameter types, showcasing overloading.

*Dynamic Behavior*

The program's use of the switch statement for filtering table contents like handling cmbUnitActionPerformed allows different queries to be executed depending on user input, providing different responses to the same method invocation.

-----

**Abstraction**

This program used abstraction by applying it to utility methods like DatabaseUtility.fetchData and DatabaseUtility.mysqlQuery. These methods hide implementation details of database queries and abstract the logic for fetching or updating data. The main program interacts with these utilities at a higher level, focusing on core functionalities without needing to manage the internal workings.

<br>

## 3. **SUSTAINABLE DEVELOPMENT GOALS**

The Tenant Management and Utility Billing Solution aligns with both SDG 9: Industry, Innovation, and Infrastructure and SDG 11: Sustainable Cities and Communities.

- **SDG 9: Industry, Innovation, and Infrastructure**: This goal emphasizes the need for innovation and the development of resilient infrastructure. The Tenant Management and Utility Billing Solution addresses these by introducing technological innovation to improve the efficiency of property management. It automates billing calculation, ensuring accuracy and reducing human error. By improving the infrastructure for rental management through automation and centralized data management, the system supports the creation of a more efficient, modern, and sustainable approach to managing residential properties. It helps create a robust, innovative system that reduces operational inefficiencies, aligning with the goal of fostering innovation in industry.
- **SDG 11: Sustainable Cities and Communities**: SDG 11 focuses on making cities and human settlements inclusive, safe, resilient, and sustainable. This project contributes to this goal by improving the management of urban housing, enhancing tenant satisfaction, and reducing inefficiencies in the billing process. By automating and streamlining utility billing, the system ensures fairness, transparency, and accountability in urban property management. Additionally, it supports the sustainable use of resources (like electricity and water) by promoting accurate billing, encouraging responsible consumption, and ensuring that tenants and apartment managers have clear insights into their utility usage, which contributes to more sustainable living practices within communities.

<br>

## 4. **INSTRUCTIONS FOR RUNNING THE PROGRAM**

How to run the program:

1. Download the zip file (<https://github.com/chedN26/OOP_Management_System.git>)
1. Extract the file, it should be named "*OOP\_Management\_System-master*" folder
1. Open XAMPP Control Panel and start Apache and MySQL
1. Open PHPMyAdmin *(http://localhost/phpmyadmin*)
1. Create a database with name “*oop\_management\_db*”
1. Import oop\_management\_db.sql file to your newly created database (*OOP\_Management\_System-master/oop\_management\_db.sql*)
1. Using **NetBeans** as code editor,  open the project folder (*OOP\_Management\_System-master*)
1. Double click Main.java inside (*OOP\_Management\_System-master\src\main\java\com\mycompany\oop\_management\_system\Main.java*) to select it
1. **IMPORTANT**: To run the program with the GUI, use **CTRL + Shift + F6**. Otherwise the program will not run.
