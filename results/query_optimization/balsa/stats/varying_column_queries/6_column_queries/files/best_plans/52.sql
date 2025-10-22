/*+ HashJoin(c b u p pl)
 HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (b (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-05 01:43:35'::timestamp AND pl.CreationDate<='2014-09-13 07:47:24'::timestamp AND p.PostTypeId=2 AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=17;

