SELECT DISTINCT company_code AS "Company code",
                founder      AS "Company founder",
                (
                    SELECT count(DISTINCT lead_manager_code)
                    FROM lead_manager
                    WHERE company_code = company.company_code
                )
                             AS "Lead managers",
                (
                    SELECT count(DISTINCT senior_manager_code)
                    FROM senior_manager
                    WHERE company_code = company.company_code
                )
                             AS "Senior Managers",
                (
                    SELECT count(DISTINCT manager_code)
                    FROM manager
                    WHERE company_code = company.company_code
                )
                             AS "Managers",
                (
                    SELECT count(DISTINCT employee_code)
                    FROM employee
                    WHERE company_code = company.company_code
                )
                             AS "Employees"
FROM company
ORDER BY company_code;