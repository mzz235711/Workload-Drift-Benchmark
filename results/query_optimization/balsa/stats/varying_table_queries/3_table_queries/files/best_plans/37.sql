/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Reputation<=2052 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 19:34:45'::timestamp;

