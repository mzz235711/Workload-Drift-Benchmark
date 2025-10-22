/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-07 03:17:45'::timestamp AND pl.CreationDate<='2014-08-12 16:20:24'::timestamp AND p.AnswerCount>=0 AND p.CommentCount<=7 AND p.CreationDate>='2010-07-21 04:30:50'::timestamp AND b.Date>='2010-09-16 06:06:51'::timestamp;

