/*+ HashJoin(p ph u)
 MergeJoin(ph u)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND p.Score>=-1 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=33;

