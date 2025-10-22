/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=13 AND ph.CreationDate>='2011-05-11 19:43:51'::timestamp AND ph.CreationDate<='2014-07-07 14:19:01'::timestamp;

