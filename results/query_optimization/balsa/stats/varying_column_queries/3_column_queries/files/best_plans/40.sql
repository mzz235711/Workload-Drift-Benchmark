/*+ MergeJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=13 AND u.CreationDate<='2014-09-04 15:15:18'::timestamp;

