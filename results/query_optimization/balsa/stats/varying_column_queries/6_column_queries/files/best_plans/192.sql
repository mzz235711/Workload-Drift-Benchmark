/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-10-04 18:27:06'::timestamp AND p.ViewCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-07 00:00:00'::timestamp;

