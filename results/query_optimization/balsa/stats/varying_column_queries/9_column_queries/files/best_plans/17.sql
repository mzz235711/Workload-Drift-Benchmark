/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.PostTypeId=2 AND p.Score=0 AND u.UpVotes>=0 AND u.UpVotes<=9 AND u.CreationDate>='2011-05-01 12:59:37'::timestamp AND u.CreationDate<='2014-08-26 04:36:29'::timestamp;

