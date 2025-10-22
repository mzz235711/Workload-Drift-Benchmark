/*+ NestLoop(u p pl c b)
 NestLoop(u p pl c)
 HashJoin(u p pl)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 IndexScan(b)
 Leading(((((u p) pl) c) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=2 AND u.Reputation>=1 AND b.Date>='2010-08-19 07:29:21'::timestamp;

