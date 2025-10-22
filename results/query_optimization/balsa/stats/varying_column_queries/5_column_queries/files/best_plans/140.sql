/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-24 16:25:59'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-05-10 17:09:25'::timestamp AND pl.CreationDate<='2014-08-02 02:18:07'::timestamp AND v.VoteTypeId=2;

