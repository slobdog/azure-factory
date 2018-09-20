CREATE PROCEDURE UpdateChangeTrackingVersion @CurrentTrackingVersion BIGINT, @TableName varchar(50)
AS

BEGIN

    UPDATE ChangeTrackingVersion
    SET [SYS_CHANGE_VERSION] = @CurrentTrackingVersion
    WHERE [TableName] = @TableName

END  