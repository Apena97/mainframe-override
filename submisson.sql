-- select all accounts
SELECT * FROM forum_posts;
where date between '2048-04-01' and '2048-05-01'
and content like '%emptystack%'
and content like '%dad%';

--authoer of that post is 'smart-money-44'
SELECT * FROM forum_accounts where username = 'smart-money-44';

-- full name of 'smart-money-44' is 'Brad Steele'
-- find other forum accounts with the same last name    
select * from forum_accounts where last_name = 'Steele';

-- find emptystack employees with the same last name
select * from emptystack_accounts where last_name = 'Steele';

-- There is only one overlap: Andrew Steele.
-- His username is 'triple-cart-38' and his password is 'password456'.
-- Providing those credentials to `node mainframe` will create `emptystack.sql`,
-- which adds the tables "emptystack_messages" and "emptystack_projects" to the database.

-- Find the message that mentions a project with self-driving taxis.
select * from emptystack_messages where body like '%taxi%' or body like '%project%';

-- That message is sent from 'your-boss-99'. Let's get their password.
select * from emptystack_accounts where username = 'your-boss-99';

-- Their password is 'notagaincarter'.
-- Let's also get the ID of project TAXI.
select * from emptystack_projects where code = 'TAXI';

-- The project ID is 'DczE0v2b'.
-- Providing those credentials to `node mainframe -stop` will complete the workshop!
