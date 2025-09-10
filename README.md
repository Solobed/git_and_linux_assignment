# git_and_linux_assignment
1. [ETL Pipeline](./Scripts/bash/etl.sh)
   - [Extract](./Scripts/bash/etl.sh#L3) → Extract
   - [Transform](./Scripts/bash/etl.sh#L16) → Transform(Renames column Variable_code and selects the relevant fields.)
   - [Load](./Scripts/bash/etl.sh#L30) → Load
   - [ETL Architecture Diagram](./diagrams/Diagram.png)
      ![Diagram](./diagrams/Diagram.png)

2. [Automation with Cron](./Scripts/bash/etl.sh#L42)
   - Scheduling the ETL script daily at **12:00 AM**

3. [Moving JSON & CSV Files from one folder to another folder](./Scripts/bash/json_and_CSV.sh)
   - Script to move `.csv` and `.json` files from a folder to another folder
   - To use this script: `bash json_and_CSV.sh input_folder_path/ output_folder_path/` or `./json_and_CSV.sh input_folder_path/ output_folder_path/`

4. [Loading Data into PostgreSQL](./Scripts/bash/posey.sh)
   - Loads Parch & Posey CSVs into PostgreSQL database `posey`
   - To use this script: `bash posey.sh db_name user_name input_folder_path` or `./posey.sh db_name user_name input_folder_path`

5. [SQL Queries](./Scripts/sql/first_question.sql)
   - [First query](./Scripts/sql/first_question.sql): List of order IDs where either gloss_qty or poster_qty is greater than 4000.
   - [Second query](./Scripts/sql/second_question.sql):  List of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.
   - [Third query](./Scripts/sql/third_question.sql): Company names that start with a 'C' or 'W', and where the primary contact contains 'ana' or 'Ana', but does not contain 'eana'.
   - [Fourth query](./Scripts/sql/fourth_question.sql): Table that shows the region for each sales rep along with their associated accounts.

