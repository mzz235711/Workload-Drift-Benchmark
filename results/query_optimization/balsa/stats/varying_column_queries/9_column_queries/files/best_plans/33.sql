/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount<=2718 AND p.AnswerCount<=5 AND p.CommentCount<=11 AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-07 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=141 AND u.Views>=0 AND u.Views<=85;

