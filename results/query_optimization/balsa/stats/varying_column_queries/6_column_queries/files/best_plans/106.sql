/*+ MergeJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND c.CreationDate>='2010-07-29 15:25:23'::timestamp AND c.CreationDate<='2014-09-13 01:37:58'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes=0;

