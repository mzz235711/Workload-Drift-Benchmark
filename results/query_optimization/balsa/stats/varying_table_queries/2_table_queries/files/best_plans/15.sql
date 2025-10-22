/*+ NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=0 AND p.Score<=52 AND p.FavoriteCount<=10 AND u.Reputation<=565 AND u.Views>=0 AND u.Views<=267 AND u.DownVotes<=5 AND u.UpVotes=3 AND u.CreationDate>='2010-08-08 14:52:18'::timestamp;

