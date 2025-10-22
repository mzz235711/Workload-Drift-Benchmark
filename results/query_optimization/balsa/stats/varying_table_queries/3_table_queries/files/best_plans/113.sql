/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND p.AnswerCount<=5 AND p.CommentCount=0 AND p.CreationDate<='2014-09-04 04:17:30'::timestamp AND u.Reputation>=1 AND u.UpVotes<=625 AND u.CreationDate>='2010-07-19 23:25:07'::timestamp;

