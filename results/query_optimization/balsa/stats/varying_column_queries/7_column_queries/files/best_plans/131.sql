/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 NestLoop(pl c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-26 19:53:40'::timestamp AND c.CreationDate<='2014-09-05 05:14:50'::timestamp AND pl.CreationDate>='2011-08-04 05:49:20'::timestamp AND pl.CreationDate<='2014-08-07 07:02:39'::timestamp AND ph.CreationDate>='2011-08-14 22:54:18'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-08-05 00:00:00'::timestamp;

