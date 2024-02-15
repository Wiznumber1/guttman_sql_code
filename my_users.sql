DROP USER
IF EXISTS 'admin_001'@'%';
SELECT " ADDING USER admin_001" AS 'INSTALLATION PROGRESSING';

CREATE USER
IF NOT EXISTS 'admin_001'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'


WITH

--SET RESOURCE LIMITS

MAX_QUERIES_PER_HOUR 19
MAX_UPDATES_PER_HOUR 9
MAX_CONNECTIONS_PER_HOUR 4
MAX_USER_CONNECTIONS 1

-- SET PASSWORD OPTIONS
FAILED_LOGIN_ATTEMPTS 10
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 45 DAY
PASSWORD HISTORY 7
PASSWORD REUSE INTERVAL 365 DAY

REVOKE ALL, GRANT OPTION FROM 'admin_001'@'%';

SELECT user, show_db-priv, account_locked
FROM mysql.user:

FLUSH PRIVELAGES;

SELECT user, show_db_priv, account_locked
FROM mysql.user;
