/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.DownVotes<=7 AND u.UpVotes>=0;

