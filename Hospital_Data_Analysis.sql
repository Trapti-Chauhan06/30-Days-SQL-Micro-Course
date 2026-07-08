create database hospital;
use hospital;
select * from record;
# Total Number of Patients
select count(*) as Total_Patients
from record;
# Average Number of Doctors per Hospital
SELECT Hospital_Name,
       AVG (Doctors_Count) AS Average_Doctors
FROM record
GROUP BY Hospital_Name;
# Top 3 Departments with the Highest Number of Patients
select department, sum(Patients_Count) as Total_Patients
from record
group by department
order by Total_Patients desc
limit 3;
# Hospital with the Maximum Medical Expenses
select Hospital_Name, sum(Medical_Expenses) as Total_Expenses from record 
group By Hospital_Name
order by Total_Expenses desc limit 1 ;
# Daily Average Medical Expenses
select Admission_Date, avg(Medical_Expenses) as Avg_Expenses
from record
group by Admission_Date
order by Avg_Expenses;

ALTER TABLE record
CHANGE COLUMN `ï»¿Hospital Name` `Hospital_Name` TEXT;
describe hospital.record;
ALTER TABLE record
CHANGE COLUMN `Doctors Count` `Doctors_Count` INT;
ALTER TABLE record
CHANGE COLUMN `Patients Count` `Patients_Count` INT;
ALTER TABLE record
CHANGE COLUMN `Admission Date` `Admission_Date` TEXT;

ALTER TABLE record
CHANGE COLUMN `Discharge Date` `Discharge_Date` TEXT;
ALTER TABLE record
CHANGE COLUMN `Medical Expenses` `Medical_Expenses` DOUBLE;






