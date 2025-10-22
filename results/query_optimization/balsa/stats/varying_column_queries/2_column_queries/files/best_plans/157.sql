/*+ HashJoin(c v ph)
 MergeJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-06 12:41:20'::timestamp AND v.BountyAmount=0;

