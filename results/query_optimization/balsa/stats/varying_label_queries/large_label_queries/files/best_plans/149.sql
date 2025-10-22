/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((ph ((v p) u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Views<=63;

