/*+ NestLoop(pl p c)
 MergeJoin(pl p)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(c)
 Leading(((pl p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND pl.CreationDate='2013-10-20 22:27:53'::timestamp;

