SELECT 
    ROUND(MIN(Plan.plan_value), 2) AS faturamento_minimo,
    ROUND(MAX(Plan.plan_value), 2) AS faturamento_maximo,
    ROUND(AVG(Plan.plan_value), 2) AS faturamento_medio,
    ROUND(SUM(Plan.plan_value), 2) AS faturamento_total
FROM
    SpotifyClone.plans AS Plan
        JOIN
    SpotifyClone.users AS User ON Plan.id = User.plan_id;