/*+ NestLoop(pl c)
 SeqScan(pl)
 IndexScan(c)
 Leading((pl c)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1;

