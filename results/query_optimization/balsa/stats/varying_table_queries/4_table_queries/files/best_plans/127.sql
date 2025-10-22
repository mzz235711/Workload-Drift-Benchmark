/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.FavoriteCount>=0 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=370 AND u.DownVotes>=0 AND u.UpVotes>=0;

