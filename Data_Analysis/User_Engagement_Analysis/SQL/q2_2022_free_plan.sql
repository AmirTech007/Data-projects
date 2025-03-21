-- q2_2022_free_plan


SELECT
    a.student_id,
    a.minutes_watched,
    IF(i.student_id IS NOT NULL, 1, 0) AS paid_in_q2
FROM
    (
        SELECT
            student_id,
            ROUND(SUM(seconds_watched) / 60, 2) AS minutes_watched
        FROM
            student_video_watched
        WHERE
            date_watched BETWEEN '2022-04-01' AND '2022-06-30'
        GROUP BY
            student_id
    ) a
    LEFT JOIN purchases_info i ON a.student_id = i.student_id
	AND paid_q2_2022 = 1
GROUP BY
    a.student_id, a.minutes_watched
HAVING
    paid_in_q2 = 0
    
order by a.student_id;