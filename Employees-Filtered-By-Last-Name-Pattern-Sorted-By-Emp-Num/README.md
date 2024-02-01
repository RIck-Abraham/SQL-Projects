
# Employees Filtered By Last Name Pattern Sorted By Employee Number

## Overview
This project hosts an SQL query designed to fetch detailed information from an employee database, focusing on employees whose last names start with 'Smith'. The goal is to provide an efficient and straightforward method for retrieving employee data, which can be particularly useful for HR departments and administrative tasks.

## Features
- **Targeted Query**: Retrieves employee details such as Employee Number, Last Name, First Name, and Middle Initial for those with last names beginning with 'Smith'.
- **Sorted Results**: Orders the output by Employee Number to facilitate easier analysis and processing.
- **Broad Compatibility**: Compatible with various SQL database management systems, including MySQL, PostgreSQL, Oracle, and SQL Server.

## Installation
1. Clone this repository to your local machine using:
   ```bash
   git clone https://github.com/Rick-Abraham/SQL-Projects/Employees-Filtered-By-Last-Name-Pattern-Sorted-By-Emp-Num.git
2. Ensure you have a SQL database management system installed and properly configured on your system.
3. Import the employee_query.sql file into your database management system.

### Usage

To execute the SQL query within your database environment, follow these steps:

1. Open your database management tool's command line interface or graphical user interface.
2. Navigate to the directory where you cloned the repository.
3. Execute the SQL script::

```sql
SOURCE /path/to/Employees-Filtered-By-Last-Name-Pattern-Sorted-By-Emp-Num/EmployeesFilteredByLastNamePatternSortedByEmpNum.sql;
```
4. Review the query results for employee data.


### Example output:
---
EMP_NUM | EMP_LNAME | EMP_FNAME | EMP_INITIAL
-------------------------------------------------
12345   | Smith     | John      | A
---


### Example

To test the function, you can run the `Acronyms.py` script and enter a phrase when prompted:

```bash
python Acronyms.py
```

Input:

```
Enter a phrase: Central Intelligence Agency
```

Output:

```
The acronym is: CIA
```

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

Project Link: [https://github.com/RIck-Abraham/Python-Projects/blob/main/Acronyms/Acronyms.py](https://github.com/RIck-Abraham/Python-Projects/blob/main/Acronyms/Acronyms.py)
