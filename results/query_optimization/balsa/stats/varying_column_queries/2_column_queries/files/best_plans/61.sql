/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND u.UpVotes<=608;

