/*+ HashJoin(c ph v pl)
 HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(pl)
 Leading(((c (ph v)) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate<='2014-08-29 16:49:55'::timestamp AND ph.PostHistoryTypeId=4 AND v.BountyAmount>=0;

