/*+ HashJoin(c u p pl b)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(b)
 Leading(((c (u (p pl))) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-10-26 20:06:13'::timestamp AND pl.CreationDate<='2014-09-08 17:52:52'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND u.Views>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-10 07:45:17'::timestamp AND b.Date>='2010-11-05 23:02:35'::timestamp AND b.Date<='2014-09-10 21:08:34'::timestamp;

