/*+ MergeJoin(v c b u p pl)
 HashJoin(c b u p pl)
 HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(v)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (c (b (u (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 18:02:58'::timestamp AND p.PostTypeId=2 AND p.CreationDate>='2009-12-05 19:06:10'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date>='2010-08-05 16:21:35'::timestamp AND u.Views<=70;

