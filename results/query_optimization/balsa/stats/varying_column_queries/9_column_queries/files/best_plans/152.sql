/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=7 AND p.CreationDate<='2014-08-28 23:18:48'::timestamp AND u.Reputation>=1 AND u.Reputation<=13806 AND u.Views>=0 AND u.Views<=88 AND u.CreationDate<='2014-08-23 21:00:21'::timestamp;

