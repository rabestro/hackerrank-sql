WITH challenge_contest AS (
    SELECT challenge_id, contest_id
    FROM challenges
             NATURAL JOIN colleges
),

     contest_submissions AS (
         SELECT contest_id, sum(total_submissions) AS submissions
         FROM submission_stats
                  NATURAL JOIN challenge_contest
         GROUP BY contest_id
     ),

     contest_accepted_submissions AS (
         SELECT contest_id, sum(total_accepted_submissions) AS accepted_submissions
         FROM submission_stats
                  NATURAL JOIN challenge_contest
         GROUP BY contest_id
     ),

     contest_views AS (
         SELECT contest_id, sum(total_views) AS views
         FROM view_stats
                  NATURAL JOIN challenge_contest
         GROUP BY contest_id
     ),

     contest_unique_views AS (
         SELECT contest_id, sum(total_unique_views) AS unique_views
         FROM view_stats
                  NATURAL JOIN challenge_contest
         GROUP BY contest_id
     ),

     contest_stats AS (
         SELECT contest_id,
                hacker_id,
                name,
                COALESCE(submissions, 0)          AS sub,
                COALESCE(accepted_submissions, 0) AS acc,
                COALESCE(views, 0)                AS vie,
                COALESCE(unique_views, 0)         AS uni
         FROM contests
                  LEFT JOIN contest_submissions USING (contest_id)
                  LEFT JOIN contest_accepted_submissions USING (contest_id)
                  LEFT JOIN contest_views USING (contest_id)
                  LEFT JOIN contest_unique_views USING (contest_id)
     )

SELECT *
FROM contest_stats
WHERE (sub + acc + vie + uni) > 0
ORDER BY contest_id
