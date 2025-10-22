/*+ HashJoin(p v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.Score>=-2 AND p.Score<=23 AND p.CommentCount>=0;

