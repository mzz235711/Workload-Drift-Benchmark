/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-09-23 22:08:32'::timestamp AND p.Score<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=11 AND u.Views>=0 AND u.Views<=13 AND u.DownVotes<=0;

