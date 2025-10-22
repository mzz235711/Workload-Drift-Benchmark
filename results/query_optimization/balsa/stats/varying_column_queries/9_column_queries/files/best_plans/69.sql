/*+ HashJoin(b p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading((b (p (u v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.Score>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.Views>=0 AND u.Views<=64 AND u.UpVotes>=0 AND u.CreationDate<='2014-08-15 22:35:05'::timestamp;

