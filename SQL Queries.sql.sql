create database ola;
use ola;
SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bookings.csv'
INTO TABLE booking
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from booking;

select count(*) booking;

#1. retrieve all successful booking:
create view successful_bookings as
select * from booking
where Booking_status = 'Success';

select * from successful_bookings ;


#2. find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select Vehicle_Type, avg(Ride_Distance)
as avg_distance from booking
group by Vehicle_Type;

select * from ride_distance_for_each_vehicle;

#3. get the total number of canceled rides by customers:
create view canceled_ride_by_costumers as
select count(*) from booking 
where Booking_Status = 'Cancled by Customer';

select * from canceled_ride_by_costumers ;

#4. list all top 5 costumers who booked the highest number of rides:
create view top_5_customers as
select Customer_ID, count(Booking_ID) as total_rides
from booking
group by Customer_ID
order by total_rides desc limit 5 ; 

select * from top_5_customers ;

#5. get the number of rides canceled by drivers due to personal and car-related issues:
create view canceled_ride_by_drivers_P_C_issues as
select count(*) from booking 
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from canceled_ride_by_drivers_P_C_issues ;

#6. find the maximum and minimum driver ratings for prime sedan bookings:
create view max_min_driver_ratings as
select max(Driver_Ratings) as max_rating,
min(Driver_ratings) as min_rating
from booking where Vehicle_Type = 'Prime Sedan';

select * from max_min_driver_ratings ;

#7. retrieve all rides where payment was made using upi:
create view upi_mode_payment_mode as
select * from booking where Payment_method = 'UPI' ;

select * from  upi_mode_payment_mode ;


#8. find the average customer rating per vehicle type:
create view avg_cust_rating as
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from booking
group by Vehicle_Type;

select * from avg_cust_rating ;

#9. calculate the total booking value of rides completed successfully:
create view total_successful_ride_value as
select sum(Booking_Value) as total_successful_value
from booking
where Booking_Status = 'Success';

select * from total_successful_ride_value ; 

#10. list all incomplete rides along with the reason:
create view incomplete_rides_reason as
select Booking_ID, Incomplete_Rides_Reason
from booking where Incomplete_Rides = 'Yes';

select * from incomplete_rides_reason ;







