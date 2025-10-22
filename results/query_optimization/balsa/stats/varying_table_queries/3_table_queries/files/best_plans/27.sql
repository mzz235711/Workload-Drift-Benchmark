/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-19 21:48:52'::timestamp AND p.CreationDate<='2014-09-08 18:43:37'::timestamp AND u.Reputation=131 AND u.CreationDate>='2010-08-06 21:02:27'::timestamp AND u.CreationDate<='2014-08-22 18:39:59'::timestamp;

