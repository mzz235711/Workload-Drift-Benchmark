/*+ HashJoin(u p v)
 HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((u p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND p.Score<=16 AND u.Reputation<=1137 AND u.UpVotes>=0 AND u.UpVotes<=5 AND u.CreationDate<='2014-09-04 17:25:07'::timestamp;

