/*+ NestLoop(p u pl b)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(b)
 Leading((((p u) pl) b)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-13 00:53:35'::timestamp AND p.ViewCount<=5435 AND p.AnswerCount=0 AND u.Reputation=101 AND u.UpVotes<=194 AND u.CreationDate<='2014-09-09 01:43:16'::timestamp;

