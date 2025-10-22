/*+ HashJoin(p u ph)
 MergeJoin(u ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate<='2014-09-05 19:09:26'::timestamp AND p.CreationDate<='2014-09-09 20:10:25'::timestamp AND u.CreationDate>='2011-05-20 04:35:58'::timestamp;

