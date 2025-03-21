-- certificates_issued_minutes_watched

SELECT 
    a.student_id,
    COALESCE(ROUND(SUM(w.seconds_watched) / 60, 2), 0) AS minutes_watched,
    a.certificates_issued
FROM
    (SELECT 
        student_id, COUNT(*) AS certificates_issued
    FROM
        student_certificates
    GROUP BY student_id) a
        LEFT JOIN
    student_video_watched w ON a.student_id = w.student_id
GROUP BY a.student_id;


    