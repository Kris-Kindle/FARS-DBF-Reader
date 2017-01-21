from dbfread import DBF
import zipfile
import sys
import csv

## This will unzip the downloaded folder from FARS
#zip_ref = zipfile.ZipFile('/Users/Kris/Documents/FARS_Reader/FARS2015NationalDBF.zip', 'r')
#zip_ref.extractall('/Users/Kris/Documents/FARS_Reader/FARS2015')
#zip_ref.close()


# Reads in the DBF file
table = DBF('/Users/Kris/Documents/FARS_Reader/FARS1990/acc1990.dbf')

f = open('/Users/Kris/Documents/FARS_Reader/FARS1990/accident90.csv', 'w')

writer = csv.writer(f)

writer.writerow(table.field_names)
for record in table:
    writer.writerow(list(record.values()))