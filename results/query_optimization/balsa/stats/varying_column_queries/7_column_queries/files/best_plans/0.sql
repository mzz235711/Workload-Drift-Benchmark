/*+ MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=-1 AND p.Score<=27 AND p.ViewCount<=10291 AND p.FavoriteCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

