/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate<='2014-09-08 19:54:38'::timestamp AND ph.PostHistoryTypeId=6 AND u.Reputation>=1 AND u.CreationDate>='2011-03-05 10:48:05'::timestamp;

