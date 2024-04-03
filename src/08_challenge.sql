SELECT full_name AS 'Nome completo', email AS 'E-mail', name AS 'Plano'
FROM users INNER JOIN plans ON users.plan_id = plans.id ORDER BY full_name;