/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount<=9 AND p.CreationDate>='2010-08-24 15:06:00'::timestamp AND p.CreationDate<='2014-09-12 15:47:25'::timestamp AND pl.LinkTypeId=1;

