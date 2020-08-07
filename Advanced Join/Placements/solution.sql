SELECT name
FROM friends
         JOIN packages ps
              ON friends.id = ps.id
         JOIN packages pf
              ON friend_id = pf.id
         JOIN students st
              ON friends.id = st.id
WHERE ps.salary < pf.salary
ORDER BY pf.salary
