/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CommentCount=7 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=16108;

