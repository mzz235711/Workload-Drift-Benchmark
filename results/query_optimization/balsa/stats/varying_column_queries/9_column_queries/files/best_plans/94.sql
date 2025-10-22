/*+ HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((c (p pl)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-08-04 02:34:10'::timestamp AND p.PostTypeId=1 AND p.Score>=-3 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CommentCount>=0 AND u.Reputation<=800 AND u.Views>=0;

