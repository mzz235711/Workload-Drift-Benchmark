/*+ HashJoin(c ph v p pl b)
 HashJoin(c ph v p pl)
 MergeJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((c (ph ((v p) pl))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.ViewCount>=0 AND p.CreationDate>='2010-08-03 13:59:03'::timestamp AND p.CreationDate<='2014-09-06 09:02:14'::timestamp AND pl.CreationDate>='2011-02-12 09:00:13'::timestamp AND ph.CreationDate>='2010-09-17 00:14:46'::timestamp AND ph.CreationDate<='2014-09-11 07:14:56'::timestamp AND v.BountyAmount<=50;

