/*+ HashJoin(c pl v ph)
 NestLoop(v ph)
 HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(v)
 IndexScan(ph)
 Leading(((c pl) (v ph))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.BountyAmount>=0;

