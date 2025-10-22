/*+ HashJoin(p ph pl)
 HashJoin(ph pl)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(pl)
 Leading((p (ph pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount<=17 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-10 21:39:59'::timestamp;

