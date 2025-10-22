/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-27 12:26:41'::timestamp;

