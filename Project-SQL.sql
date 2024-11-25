create database project_db;

use tm_new_db;

select * from financial_data;

select count(id)  as total_loan_applications from financial_data; #total loan applications

select sum(loan_amount) as total_funded_amount from financial_data; #total funded amount

select sum(total_payment) as total_amount_recevied from financial_data; #total payment received

select avg(int_rate)*100 as avg_int_rate from financial_data; #avg_interest_rate
select round(avg(int_rate),2)*100 as avg_int_rate from financial_data; #avg_interest_rate

select avg(dti)*100 as avg_dti from financial_data; #avg_dti

select loan_status from financial_data;
select count(id) as Good_Loan_Application from financial_data
where loan_status='Fully Paid' or loan_status='Current'; #Number of Good loan applications

select count(id) as Bad_Loan_Application from financial_data
where loan_status='Charged Off'; #Number of Bad loan applications

select (count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100)/
count(id) as Good_Loan_Percentage from financial_data; #Good loan percentage

select (count(case when loan_status='Charged Off' then id end)*100)/
count(id) as Bad_Loan_Percentage from financial_data; #Bad Loan percentage

select sum(loan_amount) as Bad_loan_amount from financial_data where loan_status='Charged Off'; #Bad loan funded amount

select sum(loan_amount) as Good_loan_amount from financial_data where loan_status='Fully Paid' or loan_status='Current'; #Good loan funded amount

select sum(total_payment) as Bad_Loan_Amount_Received from financial_data where loan_status='Charged Off';
