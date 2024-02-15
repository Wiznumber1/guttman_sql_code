--DROP ROLES

DROP ROLE
 If EXISTS 'read_only_classicmodels_db'@'%'

 -- CHECK TO SEE GONE
 SELECT user, show_db_priv, account_locked
 FROM mysql.user;
