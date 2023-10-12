# Project Title: "Hotel Revenue Analysis and Visualization"

## Overview:
In this data analysis project, I worked with hotel revenue data from "absentdata.com." The project involved data cleaning, transformation, and analysis using Google Sheets, BigQuery, and Tableau to gain insights into hotel revenue trends and create informative visualizations.

## Project Objectives:

### Data Cleaning with Google Sheets:

I began by cleaning the raw data, addressing any erroneous or inconsistent entries. The cleaned data was then converted into a .csv file for further analysis.

### Data Import and Querying with BigQuery:

The cleaned data was uploaded into Google BigQuery. I queried the data to understand its contents and structure.  

### Data Integration:

To gain insights over a multi-year period, I combined data from three different years into a single dataset. This new dataset was then queried to prepare it for analysis.

### Enriching the Data:

I used SQL joins, including inner and left joins, to enrich the main dataset with additional information from two separate datasets: 'market_segment' for discount information and 'meal_cost' for meal cost details.

### Data Visualization with Tableau:

The enriched dataset was imported into Tableau for visualization. I performed calculations to calculate total revenue and plotted a time series graph to illustrate revenue changes over time.

## Results and Insights:
The analysis revealed trends and patterns in hotel revenue over the specified time period.

The Tableau visualization effectively communicated the changes in revenue with reservation status dates.

Insights gained from this project can inform pricing strategies, marketing efforts, and operational decisions for the hotel.

## Technologies Used:

Google Sheets
Google BigQuery
Tableau

## Folder Structure:

**data/**: Contains the original and cleaned data files.

**sql/**: Includes SQL queries used for data cleaning and transformation.

**tableau/**: Contains Tableau workbooks and visualizations.

**project1_readme/** : Contians the project description and step undertaken 

## How to Use:

### Data Cleaning and Preparation:

Refer to the SQL queries in the sql/ folder for data cleaning steps in BigQuery.
Review the data cleaning process in Google Sheets.

### Data Visualization:

Open the Tableau workbook in the tableau/ folder to explore the visualizations.
Interact with the Tableau dashboard to analyze hotel revenue trends.

### Acknowledgements ###

This project data and steps were provided in a guided project by Absent Data. <br>
The video for the project can be found by following this link: [https://www.youtube.com/watch?v=S2zBHmkRbhY] <br>
I am grateful for the resources provided by **'Absent Data'** that made this project possible. 

### Future Enhancements:
This project can be extended and improved in several ways:

Automate the data cleaning process.

Explore more advanced analytics, such as forecasting or predictive modeling.

Incorporate additional data sources for a more comprehensive analysis.







