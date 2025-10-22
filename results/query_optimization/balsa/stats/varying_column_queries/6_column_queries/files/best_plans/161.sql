/*+ MergeJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.CreationDate>='2011-04-19 00:09:17'::timestamp AND ph.CreationDate<='2014-08-07 10:06:10'::timestamp AND v.CreationDate>='2010-07-24 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views<=103 AND u.CreationDate<='2014-08-07 04:33:01'::timestamp;

