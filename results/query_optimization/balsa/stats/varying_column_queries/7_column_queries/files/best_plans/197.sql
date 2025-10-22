/*+ MergeJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.AnswerCount=0 AND p.CommentCount<=11 AND u.Reputation>=1 AND u.DownVotes<=1 AND u.CreationDate>='2010-07-22 10:51:54'::timestamp AND u.CreationDate<='2014-09-11 19:38:01'::timestamp;

