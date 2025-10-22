/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-2 AND p.Score<=50 AND p.ViewCount<=15051 AND p.CommentCount<=16 AND b.Date<='2014-09-03 19:03:56'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=28 AND u.CreationDate<='2014-08-18 20:53:35'::timestamp;

