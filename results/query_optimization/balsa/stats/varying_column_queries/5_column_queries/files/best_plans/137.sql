/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-10 15:21:27'::timestamp AND u.Views>=0 AND u.Views<=66 AND u.CreationDate>='2010-07-20 14:01:51'::timestamp AND u.CreationDate<='2014-08-31 18:09:49'::timestamp;

