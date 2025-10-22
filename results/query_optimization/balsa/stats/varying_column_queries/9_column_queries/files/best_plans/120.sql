/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score>=-6 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-01 15:52:46'::timestamp AND v.BountyAmount>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-20 06:04:05'::timestamp;

