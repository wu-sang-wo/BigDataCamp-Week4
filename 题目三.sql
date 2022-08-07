-- EMR平台原因未测试
SELECT moviename, ar.avgrate FROM t_movie
LEFT JOIN (SELECT t_rating.movieid, avg(rate) AS avgrate FROM t_rating
LEFT JOIN (SELECT t_rating.userid, movieid, rate FROM t_rating
LEFT JOIN (SELECT t_rating.userid, count(1) AS total FROM t_rating
LEFT JOIN t_user ON t_rating.userid=t_user.userid WHERE t_user.sex='F" GROUP BY t_rating.userid ORDER BY total DESC LIMIT 1) AS fuid
ON t_rating.userid=fuid.userid ORDER BY rate DESC LIMIT 10) AS fmid
ON t_rating.movieid=fmid.movieid GROUP BY t_rating.movieid ORDER BY avgrate DESC) AS ar
ON t_movie.movieid=ar.movieid
