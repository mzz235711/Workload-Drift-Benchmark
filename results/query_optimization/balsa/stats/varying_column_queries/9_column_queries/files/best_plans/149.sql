/*+ HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=15 AND p.CreationDate<='2014-09-12 20:55:37'::timestamp AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Reputation<=5442 AND u.DownVotes>=0;

