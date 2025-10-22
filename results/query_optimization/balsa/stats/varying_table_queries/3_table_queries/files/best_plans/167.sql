/*+ HashJoin(p c u)
 MergeJoin(c u)
 IndexScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-08-04 17:35:31'::timestamp AND p.AnswerCount<=4 AND u.Reputation=101 AND u.CreationDate>='2010-08-07 06:40:19'::timestamp;

