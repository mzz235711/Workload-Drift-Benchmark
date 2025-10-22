/*+ MergeJoin(ph p u)
 MergeJoin(p u)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND p.PostTypeId=2 AND p.CreationDate='2011-11-28 05:36:15'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

