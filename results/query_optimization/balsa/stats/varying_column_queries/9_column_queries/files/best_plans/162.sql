/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=5220 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-11 14:18:16'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-09 20:26:15'::timestamp;

