DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_studentinfo`()
BEGIN
select * from tbl_students_info;
END$$
DELIMITER ;
