--Exercise 07
--c
--Total farmers vs farmers with email in municipality 54518

SELECT
    COUNT(*) AS total_farmers,
    COUNT(email) AS farmers_with_email
FROM farm.farmers
WHERE municipality_code = '54518';

/*
 total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)
*/