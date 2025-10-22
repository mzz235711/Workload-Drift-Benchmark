/*+ HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score<=24 AND p.ViewCount>=0 AND p.CommentCount<=15 AND u.Views>=0 AND u.UpVotes>=0;

