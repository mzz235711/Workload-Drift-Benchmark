/*+ HashJoin(v ph c p pl)
 HashJoin(ph c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (ph (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.PostTypeId=2 AND p.Score>=-2 AND p.Score<=10 AND p.CommentCount<=17 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=2;

