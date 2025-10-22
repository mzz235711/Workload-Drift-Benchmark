/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.CreationDate>='2012-01-27 15:59:22'::timestamp AND ph.CreationDate<='2014-09-13 08:02:51'::timestamp AND v.BountyAmount>=0 AND u.DownVotes<=0;

