
truncate_column_name: A utility function to ensure column names do not exceed a specified length, which is useful when interacting with databases that have name length restrictions.
Task 1 - Rename Columns:
Renames certain columns in the DataFrame for consistency and clarity.

Task 2 - Rename State/UT Names:
Formats the names of States and Union Territories (UTs) to a consistent style.

Task 3 - Handle New State/UT Formation:
Adjusts the DataFrame to account for the formation of new states or union territories (Telangana and Ladakh).

Task 4 - Process Missing Data:
Fills missing values in key columns and compares the percentage of missing data before and after filling.

Task 5 - Save Data to MongoDB:
Saves the processed DataFrame to a MongoDB database.

Task 6 - Fetch Data from MongoDB and Save to MySQL:
Fetches data from MongoDB, truncates column names, checks and updates the MySQL table schema, and inserts the data into a MySQL database.
Main Function:

The main() function orchestrates the execution of all tasks in sequence, from loading the data to saving it in both MongoDB and MySQL.