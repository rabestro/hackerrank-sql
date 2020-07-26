select distinct
    company_code as "Company code",
    founder as "Company founder",
    (
        select count(distinct lead_manager_code)
        from Lead_Manager
        where company_code = Company.company_code
    )
    as "Lead managers",
    (
        select count(distinct senior_manager_code)
        from Senior_Manager
        where company_code = Company.company_code
    )
    as "Senior Managers",
    (
        select count(distinct manager_code)
        from Manager
        where company_code = Company.company_code
    )
    as "Managers",
    (
        select count(distinct employee_code)
        from Employee
        where company_code = Company.company_code
    )
    as "Employees"
from Company
order by company_code;