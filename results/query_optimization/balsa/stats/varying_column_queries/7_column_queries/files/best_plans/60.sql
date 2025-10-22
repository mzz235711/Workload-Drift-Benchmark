/*+ HashJoin(v c b u p pl)
 HashJoin(c b u p pl)
 MergeJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (c (b (u (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=44 AND pl.LinkTypeId=1 AND v.VoteTypeId=2 AND u.DownVotes<=1;

