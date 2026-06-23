# OLA Performance Analytics Using SQL and Power BI

OLA Data Analyst Project using SQL and Power BI. Analyzed **100K+ ride booking records** to uncover insights on ride volume, booking status, cancellations, revenue, customer ratings, and vehicle performance through interactive dashboards and SQL analysis.

---

## Project Overview

This project analyzes OLA ride booking data to uncover business insights and improve operational efficiency. Using **SQL** for data analysis and **Power BI** for interactive visualization, the project explores booking trends, cancellations, customer behavior, revenue patterns, and service performance.

The goal of this project is to transform raw ride booking data into meaningful insights that support data-driven business decisions and improve customer satisfaction.

---

## Objectives

* Analyze ride booking trends and booking statuses.
* Identify reasons behind customer and driver cancellations.
* Evaluate customer and driver ratings.
* Analyze revenue patterns and payment methods.
* Build interactive Power BI dashboards.
* Provide business recommendations to improve operational efficiency.

---

## Tools & Technologies

* SQL (MySQL)
* Power BI
* Excel / CSV
* DAX
* Power Query

---

## Dataset

The dataset contains **100,000+ OLA ride booking records** with the following information:

* Booking ID
* Booking Status
* Customer ID
* Vehicle Type
* Pickup & Drop Location
* Ride Distance
* Booking Value
* Payment Method
* Driver Ratings
* Customer Ratings
* Cancellation Reasons
* Incomplete Ride Reasons

📊 **Dataset:** [Download Dataset](./Dataset.xlsx)

---

## SQL Analysis

The following business questions were answered using SQL:

1. Retrieve all successful bookings.
2. Find the average ride distance for each vehicle type.
3. Get the total number of cancelled rides by customers.
4. List the Top 5 customers with the highest number of bookings.
5. Find rides cancelled by drivers due to personal and car-related issues.
6. Find the maximum and minimum driver ratings for Prime Sedan rides.
7. Retrieve all rides where payment was made using UPI.
8. Find the average customer rating per vehicle type.
9. Calculate the total booking value of successful rides.
10. List all incomplete rides along with their reasons.

🗄️ **SQL Queries:** [View SQL Queries](./SQL%20Queries.sql)

---

## Power BI Dashboard

The dashboard provides insights into:

* Ride Volume Over Time
* Booking Status Breakdown
* Top 5 Vehicle Types by Ride Distance
* Revenue by Payment Method
* Top 5 Customers by Booking Value
* Customer Ratings by Vehicle Type
* Driver Ratings Distribution
* Customer vs Driver Ratings
* Cancellation Reasons Analysis

📈 **Power BI File:** [Open Dashboard](./OLA%20Dashboard.pbix)

---

## Dashboard Preview

Add screenshots of your Power BI dashboard here.

```text
images/
├── dashboard1.png
├── dashboard2.png
└── dashboard3.png
```

After uploading screenshots, use:

```md
![Dashboard 1](images/dashboard1.png)

![Dashboard 2](images/dashboard2.png)

![Dashboard 3](images/dashboard3.png)
```

---

## Key Findings

* Most rides are completed successfully, while cancellations mainly occur due to customer and driver-related issues.
* UPI is one of the most preferred payment methods among customers.
* Vehicle performance and customer ratings vary across different ride categories.
* Ride demand and revenue patterns provide valuable insights for business optimization.
* Customer satisfaction is closely related to ride completion rates and service quality.

---

## Future Enhancements

* Integrate real-time ride data for live monitoring.
* Perform sentiment analysis on customer feedback.
* Build predictive models for ride demand forecasting.
* Compare OLA's performance with competitors.

---

⭐ If you found this project useful, feel free to star this repository.
