/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 NestLoop(pl c)
 SeqScan(v)
 IndexScan(ph)
 SeqScan(pl)
 IndexScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-19 20:32:02'::timestamp AND c.CreationDate<='2014-09-09 08:12:13'::timestamp AND pl.CreationDate='2013-09-19 20:36:58'::timestamp AND ph.PostHistoryTypeId=2;

