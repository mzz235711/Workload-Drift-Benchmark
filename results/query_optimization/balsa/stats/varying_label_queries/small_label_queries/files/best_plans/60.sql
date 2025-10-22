/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score<=16 AND p.ViewCount<=2923 AND p.CommentCount<=16 AND p.CreationDate<='2014-08-31 12:08:34'::timestamp;

