/*+ HashJoin(u c p v)
 HashJoin(c p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading((u (c (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=6 AND p.PostTypeId=2 AND p.CreationDate<='2014-09-11 14:55:26'::timestamp AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=65;

