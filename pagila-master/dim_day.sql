CREATE TABLE dim_day 
(
  date_key int NOT NULL
, date_type varchar (20) NULL CONSTRAINT DF_dim_day_date_type DEFAULT ('Normal')
, full_date datetime NULL
, day_num_of_week int NULL
, day_num_of_month int NULL
, day_num_of_quarter int NULL
, day_num_of_year int NULL
, day_num_absolute int NULL
, day_of_week_name varchar (10) NULL
, day_of_week_abbreviation varchar (3) NULL
, julian_day_num_of_year int NULL
, julian_day_num_absolute decimal(18, 0) NULL
, is_weekday char (1) NULL
, is_US_civil_holiday char (1) NULL CONSTRAINT DF_dim_day_is_US_civil_holiday DEFAULT ('N')
, is_last_day_of_week char (1) NULL
, is_last_day_of_month char (1) NULL
, is_last_day_of_quarter char (1) NULL
, is_last_day_of_year char (1) NULL
, is_last_day_of_fiscal_month char (1) NULL
, is_last_day_of_fiscal_quarter char (1) NULL
, is_last_day_of_fiscal_year char (1) NULL
, prev_day_date datetime NULL
, prev_day_date_key int NULL
, same_weekday_year_ago_date datetime NULL
, same_weekday_year_ago_date_key int NULL
, week_of_year_begin_date datetime NULL
, week_of_year_begin_date_key int NULL
, week_of_year_end_date datetime NULL
, week_of_year_end_date_key int NULL
, week_of_month_begin_date datetime NULL
, week_of_month_begin_date_key int NULL
, week_of_month_end_date datetime NULL
, week_of_month_end_date_key int NULL
, week_of_quarter_begin_date datetime NULL
, week_of_quarter_begin_date_key int NULL
, week_of_quarter_end_date datetime NULL
, week_of_quarter_end_date_key int NULL
, week_num_of_month int NULL
, week_num_of_quarter int NULL
, week_num_of_year int NULL
, week_num_overall int NULL
, month_num_of_year int NULL
, month_num_overall int NULL
, month_name varchar (10) NULL
, month_name_abbreviation varchar (3) NULL
, month_begin_date datetime NULL
, month_begin_date_key int NULL
, month_end_date datetime NULL
, month_end_date_key int NULL
, quarter_num_of_year int NULL
, quarter_num_overall int NULL
, quarter_begin_date datetime NULL
, quarter_begin_date_key int NULL
, quarter_end_date datetime NULL
, quarter_end_date_key int NULL
, year_num int NULL
, year_begin_date datetime NULL
, year_begin_date_key int NULL
, year_end_date datetime NULL
, year_end_date_key int NULL
, YYYYMM varchar (6) NULL
, YYYYMMDD varchar (8) NULL
, DDMONYY varchar (7) NULL
, DDMONYYYY varchar (9) NULL
, fiscal_week_num_of_year int NULL
, fiscal_week_num_overall int NULL
, fiscal_week_begin_date_key int NULL
, fiscal_week_begin_date datetime NULL
, fiscal_week_end_date_key int NULL
, fiscal_week_end_date datetime NULL
, fiscal_month_num_of_year int NULL
, fiscal_month_num_overall int NULL
, fiscal_month_begin_date datetime NULL
, fiscal_month_begin_date_key int NULL
, fiscal_month_end_date datetime NULL
, fiscal_month_end_date_key int NULL
, fiscal_quarter_num_of_year int NULL
, fiscal_quarter_num_overall int NULL
, fiscal_quarter_begin_date datetime NULL
, fiscal_quarter_begin_date_key int NULL
, fiscal_quarter_end_date datetime NULL
, fiscal_quarter_end_date_key int NULL
, fiscal_year_num int NULL
, fiscal_year_begin_date datetime NULL
, fiscal_year_begin_date_key int NULL
, fiscal_year_end_date datetime NULL
, fiscal_year_end_date_key int NULL
) 
GO

ALTER TABLE dim_day 
ADD CONSTRAINT PK_dim_day PRIMARY KEY CLUSTERED 
  (
  date_key
  )
GO




exec sp_addextendedproperty N'MS_Description', N'YYYYMMDD; surrogate key', N'user', N'dbo', N'table', N'dim_day', N'column', N'date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'Normal; Unknown; Not Yet Occurred; Invalid; Missing', N'user', N'dbo', N'table', N'dim_day', N'column', N'date_type'
GO
exec sp_addextendedproperty N'MS_Description', N'number of days since Jan 1, 1900', N'user', N'dbo', N'table', N'dim_day', N'column', N'day_num_absolute'
GO
exec sp_addextendedproperty N'MS_Description', N'day number of the current day within the current month', N'user', N'dbo', N'table', N'dim_day', N'column', N'day_num_of_month'
GO
exec sp_addextendedproperty N'MS_Description', N'Day of calendar quarter associated with this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'day_num_of_quarter'
GO
exec sp_addextendedproperty N'MS_Description', N'Range: 1-7; day number of the week; Sunday = 1', N'user', N'dbo', N'table', N'dim_day', N'column', N'day_num_of_week'
GO
exec sp_addextendedproperty N'MS_Description', N'1-366; Jan 1 = 1;', N'user', N'dbo', N'table', N'dim_day', N'column', N'day_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'3 character abbreviation of the day of the week', N'user', N'dbo', N'table', N'dim_day', N'column', N'day_of_week_abbreviation'
GO
exec sp_addextendedproperty N'MS_Description', N'Full name of the day of the week', N'user', N'dbo', N'table', N'dim_day', N'column', N'day_of_week_name'
GO
exec sp_addextendedproperty N'MS_Description', N'An alternative string representation built by concatenating the left zero-padded 2-digit day of month,3-char month abbreviation, left zero-padded 2-digit year, of this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'DDMONYY'
GO
exec sp_addextendedproperty N'MS_Description', N'An alternative string representation built by concatenating the left zero-padded 2-digit day of month,3-char month abbreviation, left zero-padded 4-digit year, of this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'DDMONYYYY'
GO
exec sp_addextendedproperty N'MS_Description', N'date associated with the first day of the fiscal month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_month_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date associated with the first day of the fiscal month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_month_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'date associated with the last day of the fiscal month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_month_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date associated with the last day of the fiscal month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_month_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'range 1-13; representing the fiscal month number of the year containing this date', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_month_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'the number of the fiscal month containing this day as elapsed since Jan 1, 1900', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_month_num_overall'
GO
exec sp_addextendedproperty N'MS_Description', N'first day of the fiscal quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_quarter_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogage key of the first day of the fiscal quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_quarter_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'last day of the fiscal quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_quarter_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the last day of the fiscal quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_quarter_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'quarter number of the fiscal year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_quarter_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'the number of the fiscal quarter elapsed since Jan 1, 1900 containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_quarter_num_overall'
GO
exec sp_addextendedproperty N'MS_Description', N'the date of the first day of the fiscal week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_week_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'the surrogate key of the first day of the fiscal week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_week_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'the date of the first day of the fiscal week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_week_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'the surrogate key of the last day of the fiscal week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_week_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'number of the fiscal week of the year associated with this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_week_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'number of the absolute fiscal week since Jan 1, 1900 of the year associated with this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_week_num_overall'
GO
exec sp_addextendedproperty N'MS_Description', N'the date of the first day of the fiscal year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_year_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'the surrogate key of the date of the first day of the fiscal year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_year_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'the date of the last day of the fiscal year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_year_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'the date of the last day of the fiscal year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_year_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'1900+; The fiscal year number containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'fiscal_year_num'
GO
exec sp_addextendedproperty N'MS_Description', N'actual date of this day as of midnight', N'user', N'dbo', N'table', N'dim_day', N'column', N'full_date'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=this is the last day of the fiscal month', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_last_day_of_fiscal_month'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=this is the last day of the fiscal quarter', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_last_day_of_fiscal_quarter'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=this is the last day of the fiscal year', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_last_day_of_fiscal_year'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=this is the last day of the calendar month', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_last_day_of_month'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=this is the last day of the quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_last_day_of_quarter'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=today is the last day of the week', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_last_day_of_week'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=this is the last day of the calendar year', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_last_day_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=date is a nataionally recognized holiday', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_US_civil_holiday'
GO
exec sp_addextendedproperty N'MS_Description', N'Y=weekday; N=weekend', N'user', N'dbo', N'table', N'dim_day', N'column', N'is_weekday'
GO
exec sp_addextendedproperty N'MS_Description', N'the year * 1000000 + absolute julian days (absolute days since Jan 1, 1900) of this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'julian_day_num_absolute'
GO
exec sp_addextendedproperty N'MS_Description', N'1-366; absolute day of the year', N'user', N'dbo', N'table', N'dim_day', N'column', N'julian_day_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'date associated with the first day of the month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date associated with the first day of the month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'date associated with the last day of the month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date associated with the last day of the month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'Full name of the calendar month', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_name'
GO
exec sp_addextendedproperty N'MS_Description', N'3-character abbreviation of the calendar month', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_name_abbreviation'
GO
exec sp_addextendedproperty N'MS_Description', N'typically 1-12 for each month of the calendar year', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'number of months since Jan 1, 1900', N'user', N'dbo', N'table', N'dim_day', N'column', N'month_num_overall'
GO
exec sp_addextendedproperty N'MS_Description', N'date of the previous day', N'user', N'dbo', N'table', N'dim_day', N'column', N'prev_day_date'
GO
exec sp_addextendedproperty N'MS_Description', N'date key of the previous day', N'user', N'dbo', N'table', N'dim_day', N'column', N'prev_day_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'the date associated with the first day of the quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'quarter_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date associated with the first day of the quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'quarter_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'the date associated with the last day of the quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'quarter_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date associated with the last day of the quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'quarter_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'range 1-4; representing which quarter of the current calendar year contains this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'quarter_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'absolute number of calendar quarter containing this day since Jan 1, 1900', N'user', N'dbo', N'table', N'dim_day', N'column', N'quarter_num_overall'
GO
exec sp_addextendedproperty N'MS_Description', N'date associated with today one year previous to today', N'user', N'dbo', N'table', N'dim_day', N'column', N'same_weekday_year_ago_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of date associated with today one year previous to today', N'user', N'dbo', N'table', N'dim_day', N'column', N'same_weekday_year_ago_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'1-5; the week number of the month containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_num_of_month'
GO
exec sp_addextendedproperty N'MS_Description', N'range: 1-13;the week number of the calendar quarter containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_num_of_quarter'
GO
exec sp_addextendedproperty N'MS_Description', N'1-53; the number of the week of the year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_num_of_year'
GO
exec sp_addextendedproperty N'MS_Description', N'1+; the absolute week number since Jan 1, 1900 of the week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_num_overall'
GO
exec sp_addextendedproperty N'MS_Description', N'begin date of month-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_month_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of begin date of month-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_month_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'end date of month-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_month_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of end date of month-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_month_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'begin date of quarter-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_quarter_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of begin date of quarter-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_quarter_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'end date of quarter-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_quarter_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of end date of quarter-bounded week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_quarter_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'the date of the first day of the week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_year_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'the surrogate key of the date of the first day of the week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_year_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'the date of the last day of the week containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_year_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'the surrogate key of the date of the last day of the week of the year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'week_of_year_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'date of the first day of the year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'year_begin_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date of the first day of the year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'year_begin_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'date of the last day of the year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'year_end_date'
GO
exec sp_addextendedproperty N'MS_Description', N'surrogate key of the date of the last day of the year containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'year_end_date_key'
GO
exec sp_addextendedproperty N'MS_Description', N'Range: 1900+', N'user', N'dbo', N'table', N'dim_day', N'column', N'year_num'
GO
exec sp_addextendedproperty N'MS_Description', N'An alternative string built by concatenating the 4-digit year and left zero-filled month number of the yr/mo containing this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'YYYYMM'
GO
exec sp_addextendedproperty N'MS_Description', N'An alternative string built by concatenating the 4-digit year and left zero-filled month number and left zero-filled day number of month of the this day', N'user', N'dbo', N'table', N'dim_day', N'column', N'YYYYMMDD'


GO

/*
Don McMunn is a professional, business-focused consultant specializing in data warehousing and business intelligence design, development and delivery for over a decade with the Fortune 500 and SMB segments.  He may be reached at dmcmunn at ipcdesigns dot com
*/
