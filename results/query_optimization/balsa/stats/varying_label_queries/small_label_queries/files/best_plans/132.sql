/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate<='2014-09-11 00:59:36'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=2;

