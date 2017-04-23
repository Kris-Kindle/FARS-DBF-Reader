library(foreign)
library(tidyverse)

acc1990 <- read.dbf("acc1990.dbf")
acc1991 <- read.dbf("acc1991.dbf")
acc1992 <- read.dbf("acc1992.dbf")
acc1993 <- read.dbf("acc1993.dbf")
acc1994 <- read.dbf("acc1994.dbf")
acc1995 <- read.dbf("acc1995.dbf")
acc1996 <- read.dbf("acc1996.dbf")
acc1997 <- read.dbf("acc1997.dbf")
acc1998 <- read.dbf("acc1998.dbf")
acc1999 <- read.dbf("acc1999.dbf")
acc2000 <- read.dbf("acc2000.dbf")
acc2001 <- read.dbf("acc2001.dbf")
acc2002 <- read.dbf("acc2002.dbf")
acc2003 <- read.dbf("acc2003.dbf")
acc2004 <- read.dbf("acc2004.dbf")
acc2005 <- read.dbf("acc2005.dbf")
acc2006 <- read.dbf("acc2006.dbf")
acc2007 <- read.dbf("acc2007.dbf")
acc2008 <- read.dbf("acc2008.dbf")
acc2009 <- read.dbf("acc2009.dbf")
acc2010 <- read.dbf("acc2010.dbf")
acc2011 <- read.dbf("acc2011.dbf")
acc2012 <- read.dbf("acc2012.dbf")
acc2013 <- read.dbf("acc2013.dbf")
acc2014 <- read.dbf("acc2014.dbf")
acc2015 <- read.dbf("accident2015.dbf")

var_names <- intersect(names(acc1990), names(acc2015))

acc1990 <- acc1990[,colnames(acc1990)%in%var_names]
acc1991 <- acc1991[,colnames(acc1991)%in%var_names]
acc1992 <- acc1992[,colnames(acc1992)%in%var_names]
acc1993 <- acc1993[,colnames(acc1993)%in%var_names]
acc1994 <- acc1994[,colnames(acc1994)%in%var_names]
acc1995 <- acc1995[,colnames(acc1995)%in%var_names]
acc1996 <- acc1996[,colnames(acc1996)%in%var_names]
acc1997 <- acc1997[,colnames(acc1997)%in%var_names]
acc1998 <- acc1998[,colnames(acc1998)%in%var_names]
acc1999 <- acc1999[,colnames(acc1999)%in%var_names]
acc2000 <- acc2000[,colnames(acc2000)%in%var_names]
acc2001 <- acc2001[,colnames(acc2001)%in%var_names]
acc2002 <- acc2002[,colnames(acc2002)%in%var_names]
acc2003 <- acc2003[,colnames(acc2003)%in%var_names]
acc2004 <- acc2004[,colnames(acc2004)%in%var_names]
acc2005 <- acc2005[,colnames(acc2005)%in%var_names]
acc2006 <- acc2006[,colnames(acc2006)%in%var_names]
acc2007 <- acc2007[,colnames(acc2007)%in%var_names]
acc2008 <- acc2008[,colnames(acc2008)%in%var_names]
acc2009 <- acc2009[,colnames(acc2009)%in%var_names]
acc2010 <- acc2010[,colnames(acc2010)%in%var_names]
acc2011 <- acc2011[,colnames(acc2011)%in%var_names]
acc2012 <- acc2012[,colnames(acc2012)%in%var_names]
acc2013 <- acc2013[,colnames(acc2013)%in%var_names]
acc2014 <- acc2014[,colnames(acc2014)%in%var_names]
acc2015 <- acc2015[,colnames(acc2015)%in%var_names]

acc <- rbind(acc1990,acc1991,acc1992,acc1993,acc1994,acc1995,acc1996,
             acc1997,acc1998,acc1999,acc2000,acc2001,acc2002,acc2003,
             acc2004,acc2005,acc2006,acc2007,acc2008,acc2009,acc2010,
             acc2011, acc2012, acc2013, acc2014, acc2015)

write.csv(acc, "Accident.csv")
