DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_createUser`(
    IN p_name VARCHAR(100),
    IN p_username VARCHAR(100),
    IN p_password VARCHAR(200)
)
BEGIN
    if exists (select 1 from tbl_user where user_username = p_username)  THEN
      
        select 'Username Exists !!';
      
    ELSE
      
        insert into tbl_user
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );
      
    END IF;
END$$
DELIMITER ;
