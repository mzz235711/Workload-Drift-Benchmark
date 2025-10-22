/*+ HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.Score>=0 AND p.Score<=15 AND p.CreationDate>='2010-08-09 15:44:50'::timestamp AND p.CreationDate<='2014-09-11 22:27:55'::timestamp;

