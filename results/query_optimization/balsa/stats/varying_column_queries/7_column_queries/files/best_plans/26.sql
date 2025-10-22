/*+ HashJoin(c ph v pl p)
 HashJoin(ph v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (ph (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=3906 AND p.CommentCount<=13 AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

