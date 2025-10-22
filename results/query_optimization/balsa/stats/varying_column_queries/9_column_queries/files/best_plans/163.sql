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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-31 00:13:14'::timestamp AND p.Score<=10 AND p.ViewCount>=0 AND p.ViewCount<=5050 AND ph.CreationDate>='2010-12-30 17:59:52'::timestamp AND ph.CreationDate<='2014-02-08 08:47:14'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND b.Date<='2014-07-26 15:49:59'::timestamp;

