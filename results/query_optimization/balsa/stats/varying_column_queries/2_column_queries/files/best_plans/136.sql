/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 IndexScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND u.Reputation>=1 AND u.Views>=0;

