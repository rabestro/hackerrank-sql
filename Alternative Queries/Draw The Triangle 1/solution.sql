select rpad('* ', (21 - level) * 2, '* ')
from dual
connect by level <= 20;