/*+ HashJoin(v u p c)
 HashJoin(v u p)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(c)
 Leading((((v u) p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate<='2014-08-30 04:57:59'::timestamp AND p.Score>=0 AND p.Score<=42 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.CommentCount<=22 AND p.CreationDate>='2010-07-25 12:36:23'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation>=1 AND u.UpVotes=0 AND u.CreationDate>='2010-07-20 07:04:42'::timestamp AND u.CreationDate<='2014-09-11 00:30:17'::timestamp;

