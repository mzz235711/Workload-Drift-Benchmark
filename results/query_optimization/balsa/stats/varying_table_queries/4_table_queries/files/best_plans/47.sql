/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 MergeJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-09 15:51:46'::timestamp AND p.Score=9 AND p.ViewCount>=0 AND p.ViewCount<=6033 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

