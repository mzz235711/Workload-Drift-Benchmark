/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Views>=0 AND u.Views<=30 AND u.UpVotes=0 AND u.CreationDate<='2014-08-13 04:10:10'::timestamp;

