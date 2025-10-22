/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-27 17:59:21'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-09-09 08:13:01'::timestamp;

