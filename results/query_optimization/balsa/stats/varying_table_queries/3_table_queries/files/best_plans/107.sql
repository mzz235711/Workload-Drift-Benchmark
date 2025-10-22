/*+ MergeJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-09 18:13:10'::timestamp AND p.Score=6 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=8 AND u.DownVotes<=0 AND u.CreationDate>='2010-10-14 04:52:44'::timestamp;

