/* https://leetcode.com/problems/combine-two-tables/description/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT A.firstName,A.lastname,B.city,B.state
FROM Person as A LEFT JOIN Address as B ON A.personId = B.personId;

/* https://leetcode.com/problems/employees-earning-more-than-their-managers/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT e.name as Employee
FROM Employee e
INNER JOIN Employee g 
    ON ( g.id = e.managerId )
WHERE e.salary > g.salary;

/* https://leetcode.com/problems/duplicate-emails/submissions/1243662023/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT email
FROM Person
GROUP BY email HAVING COUNT(email)>1;

/* https://leetcode.com/problems/customers-who-never-order/submissions/1243663141/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT name as Customers
FROM (   
    SELECT A.name,
        B.id
    FROM Customers A
    LEFT JOIN Orders B 
        ON A.id = B.customerId
) A
WHERE id is null;

/* https://leetcode.com/problems/rising-temperature/submissions/1243679948/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT B.id
FROM Weather A
INNER JOIN Weather B 
    ON DATEDIFF(B.recordDate,A.recordDate) = 1
    and B.temperature > A.temperature;

/* https://leetcode.com/problems/employee-bonus/submissions/1238966081/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT e.name,
    g.bonus
FROM Bonus g 
FULL OUTER JOIN Employee e 
    ON (e.empId = g.empId)
WHERE g.bonus < 1000 or g.bonus is null;

/* https://leetcode.com/problems/find-customer-referee/submissions/1240884258/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT name
FROM Customer
WHERE referee_id != 2 or referee_id is null;

/* https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/submissions/1242734446/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT TOP 1 WITH TIES customer_number
FROM Orders
GROUP BY customer_number 
ORDER BY COUNT(order_number) desc;

/* https://leetcode.com/problems/big-countries/submissions/1233441608/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT name
    ,population
    ,area
FROM World
WHERE population >= 25000000
    or area >= 3000000;

/* https://leetcode.com/problems/classes-more-than-5-students/submissions/1243686249/?envType=problem-list-v2&envId=database&difficulty=EASY */
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) > 4;