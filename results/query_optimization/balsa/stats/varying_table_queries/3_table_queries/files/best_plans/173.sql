/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-08-12 14:31:34'::timestamp AND p.ViewCount<=10344 AND p.AnswerCount<=11 AND u.CreationDate>='2010-07-19 23:17:43'::timestamp;

