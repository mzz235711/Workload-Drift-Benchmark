/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount>=0 AND p.CreationDate>='2010-09-02 02:00:45'::timestamp AND pl.CreationDate<='2014-07-22 23:48:56'::timestamp;

