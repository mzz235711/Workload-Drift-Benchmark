/*+ HashJoin(v u p b)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND p.CommentCount<=10;

