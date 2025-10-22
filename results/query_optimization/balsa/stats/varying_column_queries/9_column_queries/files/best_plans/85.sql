/*+ HashJoin(p u v)
 HashJoin(u v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((p (u v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate>='2010-07-19 19:35:04'::timestamp AND p.CreationDate<='2014-08-22 22:59:51'::timestamp AND u.Reputation>=1 AND u.Reputation<=1006;

