/*+ NestLoop(p u pl c)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(c)
 Leading((((p u) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=7537 AND p.AnswerCount>=0 AND p.CommentCount<=20 AND p.CreationDate>='2010-08-01 12:08:02'::timestamp AND u.DownVotes=0;

