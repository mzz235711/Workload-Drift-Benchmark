/*+ NestLoop(u p ph b)
 NestLoop(u p ph)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(b)
 Leading((((u p) ph) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.ViewCount=4716 AND p.AnswerCount<=4 AND p.CommentCount<=9 AND u.DownVotes<=7 AND b.Date>='2010-10-03 07:29:52'::timestamp;

