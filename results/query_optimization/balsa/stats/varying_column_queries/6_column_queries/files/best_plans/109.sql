/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-04 16:26:45'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.Reputation<=881 AND u.UpVotes<=1243;

