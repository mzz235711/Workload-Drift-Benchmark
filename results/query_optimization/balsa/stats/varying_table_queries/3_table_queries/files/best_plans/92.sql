/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.ViewCount<=16090 AND p.CommentCount<=10 AND p.CreationDate<='2014-08-27 06:16:51'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-02-13 19:34:36'::timestamp;

