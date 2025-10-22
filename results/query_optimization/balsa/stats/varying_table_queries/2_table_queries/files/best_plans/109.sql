/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-19 21:42:57'::timestamp AND u.UpVotes<=71;

