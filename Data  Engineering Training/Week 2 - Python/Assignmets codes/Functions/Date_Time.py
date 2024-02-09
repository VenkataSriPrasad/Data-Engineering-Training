# from datetime import date


# # Getting min date
# mindate = date.min
# print("Minimum Date:", mindate)

# # Getting max date
# maxdate = date.max
# print("Maximum Date:", maxdate)


# Date1 = date(2023, 4, 20)
# print("Year:", Date1.year)
# print("Month:", Date1.month)
# print("Day:", Date1.day)


# """
# Classmethods in date class
# today() − Return the current local date.
# fromtimestamp(timestamp) − Return the local date corresponding to the POSIX timestamp, such as is returned by time.time().
# fromordinal(ordinal) − Return the date corresponding to the proleptic Gregorian ordinal, where January 1 of year 1 has ordinal 1.
# fromisoformat(date_string) − Return a date corresponding to a date_string given in any valid ISO 8601 format, except ordinal dates
# """

from datetime import date


# print (date.today())
# d1=date.fromisoformat('2023-04-20')
# print (d1)
# d2=date.fromisoformat('20230420')
# print (d2)
# d3=date.fromisoformat('2023-W16-4')
# print (d3)

# '''
# Instance methods in date class
# replace() − Return a date by replacing specified attributes with new values by keyword arguments are specified.
# timetuple() − Return a time.struct_time such as returned by time.localtime().
# toordinal() − Return the proleptic Gregorian ordinal of the date, where January 1 of year 1 has ordinal 1. For any date object d, date.fromordinal(d.toordinal()) == d.
# weekday() − Return the day of the week as an integer, where Monday is 0 and Sunday is 6.
# isoweekday() − Return the day of the week as an integer, where Monday is 1 and Sunday is 7.
# isocalendar() − Return a named tuple object with three components: year, week and weekday.
# isoformat() − Return a string representing the date in ISO 8601 format, YYYY-MM-DD:
# __str__() − For a date d, str(d) is equivalent to d.isoformat()
# ctime() − Return a string representing the date:
# strftime(format) − Return a string representing the date, controlled by an explicit format string.
# __format__(format) − Same as date.strftime().
# '''

from datetime import date
d = date.fromordinal(738630) # 738630th day after 1. 1. 0001
print (d)
print (d.timetuple())
# Methods related to formatting string output
print (d.isoformat())
print (d.strftime("%d/%m/%y"))
print (d.strftime("%A %d. %B %Y"))
print (d.ctime())
   

# print ('The {1} is {0:%d}, the {2} is {0:%B}.'.format(d, "day", "month"))


# # Methods for to extracting 'components' under different calendars
# t = d.timetuple()
# for i in t:
#    print(i)
   
# ic = d.isocalendar()
# for i in ic:
#    print(i)
   
# # A date object is immutable; all operations produce a new object
# print (d.replace(month=5))


# #time

# from datetime import time


# time1 = time(8, 14, 36)
# print("Time:", time1)


# time2 = time(minute = 12)
# print("time", time2)


# time3 = time()
# print("time", time3)


# time4 = time(hour = 26)