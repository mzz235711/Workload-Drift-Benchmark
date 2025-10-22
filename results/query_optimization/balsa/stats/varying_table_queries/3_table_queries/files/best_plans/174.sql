/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1 AND ph.CreationDate<='2014-08-28 05:19:57'::timestamp AND u.CreationDate<='2014-09-04 02:06:59'::timestamp;

