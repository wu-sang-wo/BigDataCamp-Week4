-- EMR平台原因未测试
SELECT sex, moviename AS name, avgrate, total FROM t_user
LEFT JOIN t_rating ON t_user.userid=t_rating.userid WHERE sex='M'
LEFT JOIN t_movie ON t_rating.movieid=t_movie.movieid
LEFT JOIN (SELECT movieid, avg(rate) AS avgrate, count(1) AS total FROM t_rating
GROUP BY movieid HAVING total>50) AS mid
ON t_rating.movieid=mid.movieid
ORDER BY avgrate DESC LIMIT 10
