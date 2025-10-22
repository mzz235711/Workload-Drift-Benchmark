/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount<=5574 AND v.BountyAmount<=50 AND u.Views<=16 AND u.UpVotes>=0 AND u.UpVotes<=14 AND u.CreationDate>='2011-03-16 20:55:08'::timestamp AND u.CreationDate<='2014-08-28 18:34:43'::timestamp;

