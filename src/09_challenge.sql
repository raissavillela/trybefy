SELECT name AS 'Plano', COUNT(users.id) AS 'Quantidade de usuários' 
FROM users INNER JOIN plans ON users.plan_id = plans.id GROUP BY name;