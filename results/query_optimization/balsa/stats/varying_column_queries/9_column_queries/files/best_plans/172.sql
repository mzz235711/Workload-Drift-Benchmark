/*+ HashJoin(b ph c p pl v)
 HashJoin(ph c p pl v)
 HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((b (ph ((c (p pl)) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.Score>=-1 AND p.Score<=29 AND p.ViewCount>=0 AND p.ViewCount<=16587 AND p.CommentCount<=8 AND p.CreationDate<='2014-09-04 12:22:49'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=10 AND v.BountyAmount>=0;

