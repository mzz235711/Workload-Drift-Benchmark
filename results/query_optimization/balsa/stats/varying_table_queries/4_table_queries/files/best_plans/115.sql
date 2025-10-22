/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 MergeJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 IndexScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-07-19 19:30:24'::timestamp AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1;

