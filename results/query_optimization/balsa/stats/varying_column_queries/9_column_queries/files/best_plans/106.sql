/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=33939 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=24 AND p.FavoriteCount>=0 AND p.FavoriteCount<=13 AND u.Views=11 AND u.UpVotes>=0;

