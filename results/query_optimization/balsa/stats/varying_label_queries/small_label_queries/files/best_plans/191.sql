/*+ HashJoin(c v ph)
 NestLoop(v ph)
 SeqScan(c)
 SeqScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-13 22:01:33'::timestamp AND v.BountyAmount>=0;

