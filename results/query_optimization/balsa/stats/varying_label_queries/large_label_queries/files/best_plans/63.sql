/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 12:20:54'::timestamp AND c.CreationDate<='2014-09-12 18:20:25'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-07-25 17:57:24'::timestamp AND v.VoteTypeId=2;

