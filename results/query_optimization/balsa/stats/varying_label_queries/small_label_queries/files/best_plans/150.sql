/*+ NestLoop(p u pl c)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(c)
 Leading((((p u) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CommentCount<=11 AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Reputation<=1646;

