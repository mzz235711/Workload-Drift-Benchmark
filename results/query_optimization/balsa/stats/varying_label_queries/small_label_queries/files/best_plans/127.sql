/*+ NestLoop(pl c)
 SeqScan(pl)
 IndexScan(c)
 Leading((pl c)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:56:18'::timestamp AND c.CreationDate<='2014-09-13 14:24:45'::timestamp AND pl.CreationDate>='2011-04-14 05:58:16'::timestamp;

