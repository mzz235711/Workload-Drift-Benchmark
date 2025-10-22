/*+ HashJoin(ph p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount=4 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-01-10 10:37:10'::timestamp AND ph.CreationDate<='2014-08-20 10:04:12'::timestamp;

