/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-11-15 18:26:07'::timestamp AND ph.CreationDate<='2014-08-05 14:36:34'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=3410;

