/*+ NestLoop(p u pl c)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(c)
 Leading((((p u) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-19 19:18:41'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-09-01 17:15:29'::timestamp AND pl.CreationDate<='2014-07-04 17:33:28'::timestamp AND u.Reputation=6 AND u.DownVotes>=0;

