library(data.table)
library(ggplot2)
library(dplyr)
library(tidyr)
library(data.table)

theme_set(theme_bw())
filecount <- fread("~/Downloads/dataset-counts.csv") %>% 
  gather(sensor, filecount, SWIR:stereoTop, factor_key=TRUE) %>% 
  mutate(date = lubridate::ymd(date)) %>% 
  filter(!is.na(filecount)) %>% setDT

ok <- filecount[,list(ok = filecount/max(filecount)>0.15), by = sensor]$ok

files <- filecount[ok]
ggplot(data = filecount[ok], aes(date, filecount)) +
  geom_bar(stat = 'identity') +
  facet_wrap(~sensor, scales = 'free_y')

ggplot(data = files) +
  geom_point(aes(date, sensor)) + 
  scale_x_date(date_breaks = '1 week') 
