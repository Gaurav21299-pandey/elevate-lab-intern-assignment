# elevate-lab-intern-assignment
# Amazon Product Sales & Review Trends (Power BI Report)

## Business Problem Statement

To effectively monitor and analyze Amazon sales performance, key performance indicators (KPIs) have been identified to support data-driven decision-making. The goal is to gain insights into revenue trends, product movement, and customer satisfaction over time.

KPI Objectives:

YTD Sales: Monitor year-to-date sales to evaluate overall revenue performance and growth.

QTD Sales: Track quarterly sales to identify sales trends, seasonal patterns, and fluctuations.

YTD Products Sold: Analyze the total number of products sold throughout the year to understand inventory movement and sales volume.

YTD Reviews: Monitor year-to-date product reviews to assess customer feedback, product quality, and overall satisfaction.




### Steps followed 

Steps Involved in Power BI Project Development
To analyze Amazon sales data and deliver actionable insights through an interactive Power BI dashboard, the following steps were undertaken:

Step 1: Data Import
        Imported the dataset in CSV format into Power BI for further processing.

Step 2: Data Cleaning using Power Query
        Loaded data into the Power Query Editor.
        Performed data cleaning operations, including:
        Removing duplicate rows.
        Eliminating unnecessary empty columns.
        Changing data types of relevant columns to ensure consistency and accuracy.

Step 3: Creating a Date Table for Time Intelligence
        Created a custom Date table using the CALENDAR DAX function to enable time-based analysis: DAXCopyEditDate = CALENDAR(MIN(Amazon_Data[Order Date]),                MAX(Amazon_Data[Order Date]))


Step 4: Extracting Time Dimensions
        Added custom columns to the Date table to derive key time attributes using DAX functions:
        Day Name: day_name = FORMAT('date'[Date], "ddd")
        Month Number: month_number = FORMAT('date'[Date], "mm")
        Month Name: month_name = FORMAT('date'[Date], "mmm")
        Quarter Number: quarter_number = QUARTER('date'[Date])
        Quarter Label: Qtr = CONCATENATE("Qtr ", 'date'[quarter_number])
        Week Number: week_number = WEEKNUM('date'[Date])
        Year: year = YEAR('date'[Date])

Step 5: Data Modeling
        Established a one-to-many relationship between the Date table and the main Amazon sales data table.
        Linked the Date column from the Date table to the Order Date in the Amazon dataset for proper time intelligence calculations.

Step 6: Dashboard Design Preparation
        Uploaded a custom background image to enhance the visual appeal of the dashboard using the canvas background option in the Power BI Home tab.

Step 7: Visualizations and Charts
        Used various visual elements to display key insights:
        Shapes for design separation.
        Card visuals to display KPIs like YTD Sales, QTD Sales, etc.
        Area chart for sales trends over time.
        Clustered column chart for weekly sales breakdown.
        Clustered bar chart for top 5 products.
        Table visual for category-level performance.
        Slicers for interactivity (e.g., filter by year, month, or product).

Step 8: Filtering and Insights
        Applied visual-level filters to:
        Identify Top 5 Products by YTD Sales.
        Identify Top 5 Products by YTD Reviews

- Visualization Approach to Address the Business Problem

    To effectively interpret and communicate key insights derived from Amazon sales data, the following chart types and visualizations have been selected. These       visual elements are designed to support strategic analysis and enhance understanding of sales performance, product trends, and customer satisfaction:

- Chart Requirements:

  YTD Sales by Month (Line Chart):
  Illustrates monthly sales performance throughout the year to uncover long-term growth trends and seasonal patterns.

  YTD Sales by Week (Column Chart):
  Provides a weekly breakdown of sales, enabling the identification of short-term fluctuations and performance spikes.

  Sales by Product Category (Heat Map or Matrix):
  Offers a high-level view of sales distribution across product categories, helping to identify the most and least profitable segments.

  Top 5 Products by YTD Sales (Bar Chart):
  Highlights the five best-selling products based on year-to-date sales, drawing attention to key revenue drivers.

  Top 5 Products by YTD Reviews (Bar Chart):
  Showcases the five most-reviewed products over the year, providing insights into customer engagement and preference trends




-Type of Problem Solved:
  
  I had addressed a Sales Performance and Customer Insight Analysis problem using historical Amazon sales data. Specifically, my dashboard helps solve challenges    related to:

  Lack of visibility into year-to-date (YTD) and quarter-to-date (QTD) sales performance.

  Difficulty in identifying top-performing products and customer preferences.

  Limited insights into seasonal trends, sales fluctuations, and category-level performance.

  Inability to track customer sentiment through product reviews effectively.


-  Business Value & Benefits to the Client:
   Improved Sales Strategy:

      By analyzing YTD and QTD sales trends, the client can identify peak and low-performing periods, helping in inventory planning, targeted marketing, and sales       forecasting.

      Product Performance Optimization:

      The "Top 5 Products by YTD Sales" and "Sales by Category" visualizations highlight best-sellers and underperformers. This enables better decision-making           regarding promotions, pricing strategies, and product focus.

      Understanding Customer Feedback:

      With YTD reviews data, the client can track how customer satisfaction aligns with product performance and make improvements to enhance user experience.

      Faster Decision-Making:

      Interactive visuals and filters provide quick access to key metrics, allowing stakeholders to make real-time, data-driven decisions without deep technical          knowledge.

      Automated data connections and transformations reduce manual reporting time and improve reporting accuracy and reliability.

      Scalability and Reusability:

The dashboard setup (using date tables, DAX, custom sorting, etc.) ensures the solution can be reused or scaled for new time periods or data without redesigning the entire report.


# POWER-BI-PROJECT
