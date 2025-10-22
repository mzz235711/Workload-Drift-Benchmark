/*+ HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=1 AND p.ViewCount<=12363 AND p.CreationDate<='2014-09-09 12:30:34'::timestamp AND u.Reputation>=1 AND u.Reputation<=830 AND u.Views>=0 AND u.Views<=23 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=23;

