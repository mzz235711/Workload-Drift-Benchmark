/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-05 21:46:47'::timestamp AND c.CreationDate<='2014-09-07 16:14:31'::timestamp AND pl.CreationDate>='2010-08-04 15:57:30'::timestamp AND pl.CreationDate<='2014-08-12 16:20:24'::timestamp AND v.VoteTypeId=2;

