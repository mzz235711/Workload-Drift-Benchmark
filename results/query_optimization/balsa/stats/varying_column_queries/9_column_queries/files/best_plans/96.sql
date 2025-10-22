/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate>='2010-10-19 12:15:32'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=7955 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND u.CreationDate>='2011-03-04 18:17:26'::timestamp AND u.CreationDate<='2014-08-17 22:02:40'::timestamp AND b.Date<='2014-08-31 09:05:41'::timestamp;

