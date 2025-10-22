/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-07-19 21:33:33'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-17 11:23:18'::timestamp AND ph.CreationDate<='2014-08-08 05:45:19'::timestamp AND u.Reputation=1 AND u.Views<=36;

