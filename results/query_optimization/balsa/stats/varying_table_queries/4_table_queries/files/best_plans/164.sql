/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND p.Score>=0 AND p.Score<=40 AND p.ViewCount<=49948 AND p.CommentCount=1 AND b.Date>='2010-09-03 13:09:15'::timestamp AND u.Views<=56 AND u.UpVotes<=119;

