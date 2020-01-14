Get-Date
# 2020年1月14日 13:29:26

Get-Date -DisplayHint Date
# 2020年1月14日

Get-Date -DisplayHint Time
# 13:29:26

Get-Date -Year 2015 -Month 9 -Day 3 -DisplayHint Date
# 2015年9月3日

Get-Date -UFormat "%Y/%m/%d"
# 2020/01/14

Get-Date -UFormat "%p %H:%M:%S"
# 午後 13:29:26

Get-Date -Format "yyyy/MM/dd"
# 2020/01/14

Get-Date -Format "HH:mm:ss"
# 13:29:26

(Get-Date).AddDays(-1)
# 2020年1月13日 13:29:26

(Get-Date).AddDays(1)
# 2020年1月15日 13:29:26

(Get-Date).AddMonths(-1)
# 2019年12月14日 13:29:26

(Get-Date).AddMonths(1)
# 2020年2月14日 13:29:26
