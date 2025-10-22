/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND p.PostTypeId=1 AND p.Score>=-1 AND p.ViewCount<=10291 AND p.CommentCount>=0 AND u.DownVotes<=65 AND u.UpVotes>=0;

