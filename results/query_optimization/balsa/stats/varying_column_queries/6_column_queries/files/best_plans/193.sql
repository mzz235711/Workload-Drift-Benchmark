/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.CommentCount<=9 AND u.Views<=46 AND u.CreationDate>='2010-12-06 00:16:49'::timestamp AND u.CreationDate<='2014-08-30 23:35:22'::timestamp AND b.Date>='2011-02-13 12:57:22'::timestamp;

