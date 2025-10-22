/*+ HashJoin(b pl p u)
 HashJoin(pl p u)
 MergeJoin(p u)
 SeqScan(b)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((b (pl (p u)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount=0 AND u.Views=3;

