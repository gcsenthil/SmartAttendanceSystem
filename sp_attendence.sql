DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_attendence`(
IN Id varchar(100),
IN _createby varchar(50)
)
BEGIN
insert into tbl_attendance
        (
            Id,
            Time,
            createby
        )
        values
        (
            Id,
            SYSDATE(),
            _createby
        );
END$$
DELIMITER ;
