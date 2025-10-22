/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.Score<=24 AND v.BountyAmount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=53 AND u.CreationDate<='2014-09-12 15:43:40'::timestamp;

