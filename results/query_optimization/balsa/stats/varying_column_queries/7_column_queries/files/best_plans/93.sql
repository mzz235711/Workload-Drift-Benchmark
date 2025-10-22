/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate>='2010-09-13 15:14:47'::timestamp AND p.CreationDate<='2014-09-11 19:00:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=186 AND u.UpVotes<=16;

