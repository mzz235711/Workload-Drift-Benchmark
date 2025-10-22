/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-08-09 06:57:37'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=20 AND u.Reputation>=1 AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes<=35 AND u.CreationDate<='2014-09-09 01:14:54'::timestamp;

