/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-4 AND p.CommentCount>=0 AND u.Views<=61 AND u.UpVotes>=0 AND u.UpVotes<=22;

