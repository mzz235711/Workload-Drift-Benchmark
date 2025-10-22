/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=2 AND u.Views<=65 AND u.DownVotes>=0;

