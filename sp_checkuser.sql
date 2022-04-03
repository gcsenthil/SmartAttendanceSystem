DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkuser`(
IN p_username varchar(100),
IN p_password varchar(200) )
BEGIN
select  * from tbl_user where user_username=p_username;

END$$
DELIMITER ;
