/*+ MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND p.Score=5 AND p.ViewCount<=3130 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=17 AND u.CreationDate>='2010-07-27 12:49:59'::timestamp AND u.CreationDate<='2014-09-12 06:02:50'::timestamp;

