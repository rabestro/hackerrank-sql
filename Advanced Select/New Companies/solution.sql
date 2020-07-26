select
    company_code as "Company code",
    founder as "Company founder",
    (
        select count(lead_manager_code)
        from Lead_Manager
        where company_code = Company.company_code
    )
    as "Lead managers",
    (
        select count(senior_manager_code)
        from Senior_Manager
        where company_code = Company.company_code
    )
    as "Senior Managers",
    (
        select count(manager_code)
        from Manager
        where company_code = Company.company_code
    )
    as "Managers"
from Company
order by company_code;