/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-1 AND p.CommentCount<=13 AND u.Views=4 AND u.DownVotes<=3;

