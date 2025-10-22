/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-10 22:01:55'::timestamp AND pl.LinkTypeId=1 AND v.BountyAmount<=50;

