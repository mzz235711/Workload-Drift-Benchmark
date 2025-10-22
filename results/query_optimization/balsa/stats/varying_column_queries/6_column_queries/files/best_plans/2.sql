/*+ HashJoin(b c u p pl)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-08-25 21:25:22'::timestamp AND c.CreationDate<='2014-09-10 21:20:22'::timestamp AND p.PostTypeId=2 AND p.ViewCount<=3162 AND p.CommentCount<=16;

