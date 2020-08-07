SELECT rpad('* ', (21 - level) * 2, '* ')
FROM dual
CONNECT BY level <= 20;