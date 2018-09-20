create table ChangeTrackingVersion
(
    TableName varchar(255),
    SYS_CHANGE_VERSION BIGINT,
)

DECLARE @ChangeTracking_version BIGINT
SET @ChangeTracking_version = CHANGE_TRACKING_CURRENT_VERSION()

INSERT INTO ChangeTrackingVersion
VALUES
    ('BasicModel', @ChangeTracking_version),
    ('IssueReport', @ChangeTracking_version),
    ('IssueReportAttachment', @ChangeTracking_version),
    ('Series2', @ChangeTracking_version)