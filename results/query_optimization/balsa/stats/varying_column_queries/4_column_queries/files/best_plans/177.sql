/*+ HashJoin(ph p u)
 NestLoop(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.FavoriteCount=0 AND u.Reputation<=101 AND u.UpVotes<=34;

