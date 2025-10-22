/*+ HashJoin(c p u pl b)
 HashJoin(c p u pl)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(b)
 Leading(((c ((p u) pl)) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-07 16:01:39'::timestamp AND pl.CreationDate<='2014-08-26 09:02:42'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=6705 AND p.AnswerCount>=0 AND u.Reputation=1 AND u.Views>=0 AND u.CreationDate<='2014-09-13 08:32:22'::timestamp;

