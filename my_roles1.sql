SELECT  'ADDING ROLES ' AS 'INSTALLATION PROGRESSING'

CREATE ROLES IF NOT EXISTS
'read_only_classicmodels_db',
'admin_',
'read_only_employees_db',
'app_user',

SELECT user, show_db_priv, account_locked
FROM mysql.user;

GRANT CREATE, Drop
ON clssicmodels. *
to'admin_user'@'%';

GRANT SHOW DATABASES
ON *.*
To 'admin_user'@'%';

GRANT SELECT
ON employees.*
To 'read_only_employees_db'@'%';

SELECT user, show_db_priv, account_locked
FROM mysql.user;

SELECT 'CREATING ROLES' AS 'INSTALLATION PROGRESSING';
GRANT 'admin_007' TO 'admin_006';

GRANT 'read_only_classicmodels_db' to 'admin_001', 'admin_003';

GRANT 'read_only_employees_dn' to 'admin_002', 'admin_004';

SELECT 'CREATING ROLES' AS 'INSTALLATION PROGRESSING';
GRANT 'app_user' TO 'admin_006';

GRANT  'admin_user' TO 'admin_005';

FLUSH PRIVELAGES;

--CREATE ROLES
SELECT 'ENABLING ROLES' AS 'INSTALLATION PROGRESSING';

SET DEFAULT
ROLE ALL TO 'admin_001'@'%', 'admin_002'@'%',
            'admin_003'@'%',  'admin_004'@'%',
            'admin_005'@'%',  'admin_006'@'%';

            --CREATE ROLES
            SELECT 'SCRIPT DONE' AS 'INSTALLATION PROGRESSING';


            /*********************************************************************************
            */
