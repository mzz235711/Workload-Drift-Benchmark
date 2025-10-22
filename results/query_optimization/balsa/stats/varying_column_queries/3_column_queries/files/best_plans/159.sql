/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-07-23 01:56:37'::timestamp;

