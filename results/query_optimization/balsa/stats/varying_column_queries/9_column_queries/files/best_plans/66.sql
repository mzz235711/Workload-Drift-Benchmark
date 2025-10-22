/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.Score<=55 AND p.AnswerCount<=3 AND p.CommentCount<=15 AND p.FavoriteCount>=0 AND p.FavoriteCount<=2 AND u.Views>=0 AND u.Views<=51 AND u.UpVotes<=123;

