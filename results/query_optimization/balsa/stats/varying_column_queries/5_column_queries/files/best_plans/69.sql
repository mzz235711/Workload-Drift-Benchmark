/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND c.CreationDate>='2010-07-25 11:24:42'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.UpVotes>=0 AND u.CreationDate>='2010-07-26 19:24:47'::timestamp;

