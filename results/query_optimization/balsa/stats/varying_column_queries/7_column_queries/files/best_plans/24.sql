/*+ HashJoin(b u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 IndexScan(b)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.Score>=-6 AND p.Score<=17 AND p.ViewCount=123 AND p.CommentCount>=0 AND p.FavoriteCount<=1 AND u.Views>=0 AND u.UpVotes>=0;

