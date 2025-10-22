/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-26 01:08:43'::timestamp AND c.CreationDate<='2014-08-29 13:21:08'::timestamp AND pl.CreationDate<='2014-08-20 20:25:38'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-25 00:00:00'::timestamp;

