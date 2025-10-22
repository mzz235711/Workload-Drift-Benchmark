/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=15 AND p.CreationDate>='2010-09-18 08:51:04'::timestamp AND p.CreationDate<='2014-09-04 05:17:43'::timestamp AND u.Reputation<=377 AND u.Views>=0 AND u.Views<=15;

