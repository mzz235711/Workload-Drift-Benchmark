/*+ HashJoin(b p u v)
 HashJoin(p u v)
 MergeJoin(u v)
 SeqScan(b)
 IndexScan(p)
 IndexScan(u)
 IndexScan(v)
 Leading((b (p (u v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount=1 AND u.Views<=336;

