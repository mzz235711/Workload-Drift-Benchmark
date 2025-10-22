/*+ NestLoop(pl c)
 SeqScan(pl)
 IndexScan(c)
 Leading((pl c)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.CreationDate<='2014-08-22 22:02:12'::timestamp;

