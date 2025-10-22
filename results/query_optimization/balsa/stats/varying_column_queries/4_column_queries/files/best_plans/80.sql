/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Views>=0 AND u.Views<=115 AND u.UpVotes<=100 AND u.CreationDate>='2010-12-03 01:50:07'::timestamp;

