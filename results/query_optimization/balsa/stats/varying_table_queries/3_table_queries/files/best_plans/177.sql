/*+ HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND u.DownVotes>=0 AND u.DownVotes<=2;

