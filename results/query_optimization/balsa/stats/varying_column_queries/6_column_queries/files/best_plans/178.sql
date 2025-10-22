/*+ HashJoin(v p pl ph c b)
 MergeJoin(v p pl ph c)
 NestLoop(v p pl ph)
 MergeJoin(v p pl)
 MergeJoin(v p)
 IndexScan(v)
 IndexScan(p)
 SeqScan(pl)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(b)
 Leading((((((v p) pl) ph) c) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.CreationDate>='2010-07-27 16:26:53'::timestamp AND p.CreationDate<='2014-08-28 20:59:54'::timestamp AND ph.CreationDate>='2011-04-06 17:35:50'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND b.Date>='2010-07-21 06:03:13'::timestamp AND b.Date<='2014-08-14 16:05:14'::timestamp;

