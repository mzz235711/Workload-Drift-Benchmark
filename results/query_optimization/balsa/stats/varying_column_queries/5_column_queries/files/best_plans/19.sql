/*+ HashJoin(ph u p pl c)
 HashJoin(u p pl c)
 HashJoin(p pl c)
 HashJoin(pl c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(c)
 Leading((ph (u (p (pl c))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=9 AND u.Views<=96 AND u.UpVotes<=23;

