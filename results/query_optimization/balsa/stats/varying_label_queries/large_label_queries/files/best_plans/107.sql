/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.PostTypeId=2 AND u.Reputation<=6140 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-21 20:21:20'::timestamp;

