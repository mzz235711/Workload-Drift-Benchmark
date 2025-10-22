/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-05-31 03:38:31'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-08-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

