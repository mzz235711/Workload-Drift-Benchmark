/*+ HashJoin(p v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.Score>=-1 AND p.Score<=16 AND p.ViewCount<=2496 AND p.CommentCount>=0 AND p.CommentCount<=14 AND u.Reputation<=388 AND u.UpVotes>=0;

