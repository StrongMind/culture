# Data Analyst exercises

#### Please answer the following questions and provide an example that illustrates your answer, whether in SQL or regular text.
 - What is ETL?  How does it differ from an ELT?  When would one be used over the other?
- What is an alias?
- What is normalization?  What is the typical form used today?
- What is the difference between truncate and delete?
- What is a CTE?
- What is a Cartesian join and what issue(s) can it cause?

#### Given the tables shown below, please answer the scenario questions using Snowflake or MS SQL Server syntax.
  xxxxx images

- The sample tables shown provides data on actors who portrayed certain characters.  Given this data, please provide SQL code that will provide answers to the following questions:
    - What is the name and alias of each person whose agency is control? Sort results by name descending.
    - What are the names of all people who are male and whose Agent ID is below 99 but above 0?
    - How can you update the character table so that any alias of “None” displays “Not Provided” instead?
    - Provide a list of last names only from the person table
    - What’s the alias with the highest agent ID value?  Assign the column name of “max id” in your results
    - Which person has the most characters in their name?  Use a CTE to get the highest character length in your code.
    - What is the total number of characters in everyone’s name combined?  Label the result column “total_characters”
    - What are the total count of records by gender?
    - A user wants a list of all person names and all character aliases combined in one single column, with no duplicates.  What query would provide this list?  Please label the column “all_names”
    - Provide a statement to insert a record into the person table with ID 987, Name of Robert Green, Gender of M
- An employee ran the query below looking to get a list with agency, castyear and gender.  The results are not what they expected.  Describe what the results would be and what the proper SQL should be. 

        select agency, CastYear, gender from Person cross join character

- Answer the following questions using the Venn diagram below as reference.  The tables use a field named “key” for their relationship.  Select all records from each table in your results.

   xxxxx images

    - What code would yield results from both tables only where they have matching records?
    - What code would yield results from both tables with all records from table A and only matching records from table B?
    - What code would yield results from both tables for records with no matches between table A and table B?
    - What code would yield results from table B where there were no matches with table A?
    - What code would yield results from both tables, regardless if there was a match or not?


