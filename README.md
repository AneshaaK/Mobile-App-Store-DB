# Mobile-App-Store-DB
Our project’s core motive is to design a database that efficiently captures and plays with the data retrieved from the app store to help the business owners and marketing strategists to understand their customers better and formulate new business strategies based on this knowledge.

Data that could be retrieved from the App store:
- App downloads per category
- Count of single App downloads
- Reviews of a particular App
- Ratings of a particular App
- Ad Revenue of a particular App
- Cost of a particular App
- Compliance clearance of a particular App

## Project Milestones:
1. Initial Study
  - Analysis & requirements
  - Objective
  - Scope
  - Boundaries
  - End Users
2. Database Design (top-down approach)
  - Conceptual Design: define business rules and create ER model
  - DBMS Selection: MySQL RDBMS
  - Logical Design: data model independent of physical level details and create a data dictionary to store metadata
  - Physical Design:
3. Implementation: Installation of the MySQL Relational DBMS in Windows Laptop
  - Downloaded Installer from url https://dev.mysql.com/downloads/mysql/
  - Use the Custom Setup option and select the Latest available versions for Server and Workbench
  - Standalone Server
  - Create root password
  - We have also installed POPSQL which is a GUI to MYSQL for better visualization
4. Schema creation, Data loading & Conversion
  - Create a database 
  - Create 1-side tables first (Category, Developer, User)
  - Create M-side tables (Application, review, Download)
  - Import data to each table using CSV files from MYSQL workbench (load data into 1-side followed by M-side tables)
  - Create views for end-users and stored procedures
5. Testing And Evaluation
  - Structural testing (Test all the tables for Entity and Referential Integrity, mandatory fileds not null, Constraints, defalut values check)
  - Testing views and stored procedures

## Images
### Data Dictionary
<img src="https://user-images.githubusercontent.com/131211098/235268569-74135bf7-5fde-4778-bea5-07811aa530e4.png" width="600" height="500">

### DB Designs
<table>

#### Note: 
SQL Code is 
  <tr>
    <td>Conceptual ER Diagram</td>
     <td>Logical ER Diagram</td>
     <td>Physical ER Diagram</td>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/131211098/235268187-dea981d4-38bf-459f-ade5-84e80945ac92.png" width=400 height=480></td>
    <td><img src="https://user-images.githubusercontent.com/131211098/235268440-38aa33db-f267-4db5-9f39-581752f15d83.png" width=400 height=480></td>
    <td><img src="https://user-images.githubusercontent.com/131211098/235269571-c41aa6a8-d300-4e4d-9a25-92971e2acf35.png" width=400 height=480></td>
  </tr>
 </table>
 
### Visualizations from POPSQL GUI
- REVIEW PER CATEGORY

![image](https://user-images.githubusercontent.com/131211098/235270073-35973eb9-7c00-4656-86db-ed2fd95e5f93.png)

- RATING PER CATEGORY

![image](https://user-images.githubusercontent.com/131211098/235270188-19839b74-b8e8-48c3-96d9-cade1d77befa.png)

- FREE APP DOWNLOADS BASED ON CATEGORY

![image](https://user-images.githubusercontent.com/131211098/235270233-a63fd3c8-aa41-4e52-bdc6-dbf1b495e6c8.png)

- APP STORE IN-APP PURCHASES BASED ON CATEGORY
 ![image](https://user-images.githubusercontent.com/131211098/235269834-8e38a69c-3d55-4e02-8b55-496be0034d94.png)
