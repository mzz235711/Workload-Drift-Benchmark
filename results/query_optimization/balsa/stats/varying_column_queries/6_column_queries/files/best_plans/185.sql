/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-04 16:10:44'::timestamp AND c.CreationDate<='2014-09-13 10:58:30'::timestamp AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-10-06 14:23:03'::timestamp AND u.Reputation>=1;

