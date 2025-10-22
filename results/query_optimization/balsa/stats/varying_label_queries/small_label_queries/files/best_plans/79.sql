/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=736 AND u.CreationDate<='2014-09-09 21:12:44'::timestamp;

