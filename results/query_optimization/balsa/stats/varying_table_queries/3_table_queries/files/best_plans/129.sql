/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=0 AND p.Score<=18 AND p.ViewCount<=1588 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-07-23 16:49:47'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-29 03:35:51'::timestamp;

