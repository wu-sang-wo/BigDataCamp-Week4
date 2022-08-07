-- 测试通过
SELECT age, avg(rate) AS avgrage FROM t_rating
LEFT JOIN t_user ON t_rating.userid=t_user.userid
WHERE t_rating.movieid=2116
GROUP BY age ORDER BY age ASC
