CREATE TABLE [dbo].[CalendarJAHLFL] (
    [Date] DATE PRIMARY KEY,
    [Year] INT,
    [Month] INT, 
    [MonthName] VARCHAR(10), 
    [YearMonth] VARCHAR(7) 
);


DECLARE @StartDate DATE = '2024-01-01';
DECLARE @EndDate DATE = '2024-06-29';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO [dbo].[CalendarJAHLFL] ([Date], [Year], [Month], [MonthName], [YearMonth])
    VALUES (
        @StartDate,
        YEAR(@StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate), 
        FORMAT(@StartDate, 'yyyy-MM') 
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;