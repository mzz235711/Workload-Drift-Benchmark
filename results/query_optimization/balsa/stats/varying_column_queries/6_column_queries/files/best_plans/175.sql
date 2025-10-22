/*+ HashJoin(b c u p pl)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount=0 AND u.Views>=0 AND u.Views<=12 AND u.UpVotes<=67;

