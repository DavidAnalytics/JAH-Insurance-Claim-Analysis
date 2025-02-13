ALTER TABLE G360TempJAHClaimLFL
ADD AddedDateOnly DATE;

UPDATE G360TempJAHClaimLFL
SET AddedDateOnly = CAST(AddedDate AS DATE);

UPDATE G360TempJAHClaimLFL
SET AddedDateOnly = AddedDate;