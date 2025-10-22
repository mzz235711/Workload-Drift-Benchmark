/*+ HashJoin(v ph c pl)
 MergeJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:03:30'::timestamp AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-08-12 13:24:12'::timestamp AND v.VoteTypeId=2;

