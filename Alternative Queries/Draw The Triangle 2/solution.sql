SELECT rpad('* ', level * 2, '* ')
FROM dual
CONNECT BY level <= 20;