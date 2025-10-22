/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate>='2010-07-18 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation<=477;

