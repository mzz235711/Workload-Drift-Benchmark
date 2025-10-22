/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-07-23 20:14:05'::timestamp AND ph.CreationDate<='2014-09-06 03:49:47'::timestamp;

