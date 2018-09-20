CREATE TABLE Series2
(
    Series2Id INT IDENTITY PRIMARY KEY,
    Series2Desc NVARCHAR(128) NOT NULL
)

CREATE TABLE BasicModel
(
    BasicModelId INT IDENTITY PRIMARY KEY,
    BasicModelName NVARCHAR(128) NOT NULL,
    Series2Id INT REFERENCES Series2 (Series2Id)
)

CREATE TABLE IssueReport
(
    IssueReportId INT IDENTITY PRIMARY KEY,
    Subject NVARCHAR(128) NOT NULL,
    BasicModelId INT REFERENCES BasicModel (BasicModelId)
)

CREATE TABLE IssueReportAttachment
(
    IssueReportAttachmentId INT IDENTITY PRIMARY KEY,
    FilePath NVARCHAR(128) NOT NULL,
    FileSize NVARCHAR(128) NOT NULL,
    IssueReportId INT REFERENCES IssueReport (IssueReportId)
)