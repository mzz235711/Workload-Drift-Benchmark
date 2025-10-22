/*+ HashJoin(b c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (v (u (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-26 13:37:04'::timestamp AND c.CreationDate<='2014-09-11 15:08:42'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=11 AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.CreationDate>='2010-07-26 19:24:47'::timestamp AND u.CreationDate<='2014-08-25 18:36:43'::timestamp;

