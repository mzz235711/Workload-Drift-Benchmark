/*+ NestLoop(u ph p)
 NestLoop(u ph)
 IndexScan(u)
 IndexScan(ph)
 IndexScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND p.Score<=17 AND p.CommentCount<=14 AND u.UpVotes=0 AND u.CreationDate='2013-08-08 17:02:17'::timestamp;

