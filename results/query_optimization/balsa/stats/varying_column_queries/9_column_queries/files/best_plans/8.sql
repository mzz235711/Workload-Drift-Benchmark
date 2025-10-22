/*+ HashJoin(c u pl p b)
 HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(b)
 Leading(((c (u (pl p))) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-30 23:41:56'::timestamp AND c.CreationDate<='2014-08-26 22:52:59'::timestamp AND pl.LinkTypeId=1 AND p.Score<=23 AND p.ViewCount<=75058 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate<='2014-09-08 22:09:43'::timestamp AND u.Views>=0;

