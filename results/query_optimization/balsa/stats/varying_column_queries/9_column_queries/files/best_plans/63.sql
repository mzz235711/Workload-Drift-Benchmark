/*+ HashJoin(b ph c v p pl)
 HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (ph (c (v (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-26 20:03:09'::timestamp AND c.CreationDate<='2014-09-11 23:57:35'::timestamp AND p.PostTypeId=2 AND pl.LinkTypeId=3 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-02-05 15:42:04'::timestamp AND v.VoteTypeId=2 AND b.Date>='2010-07-29 17:59:10'::timestamp AND b.Date<='2014-09-09 02:46:20'::timestamp;

