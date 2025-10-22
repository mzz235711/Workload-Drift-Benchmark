/*+ HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-07-27 15:08:11'::timestamp AND p.Score=4 AND p.FavoriteCount=0 AND u.Reputation<=1313 AND u.UpVotes<=298 AND u.CreationDate<='2014-09-08 14:26:02'::timestamp;

