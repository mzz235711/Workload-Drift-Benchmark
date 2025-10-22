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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 02:17:07'::timestamp AND p.AnswerCount<=4 AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date>='2010-07-22 16:08:19'::timestamp AND b.Date<='2014-09-12 03:06:54'::timestamp;

