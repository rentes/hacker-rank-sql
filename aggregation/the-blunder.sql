select ceiling(avg(convert(decimal(10, 2), salary)) - avg(convert(decimal(10, 2), replace(salary, '0', '')))) from employees (nolock);