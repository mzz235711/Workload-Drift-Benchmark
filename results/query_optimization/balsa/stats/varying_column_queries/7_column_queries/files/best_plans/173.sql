/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount>=0 AND p.ViewCount<=22258 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 08:38:38'::timestamp AND u.Reputation<=821 AND u.Views<=203 AND u.UpVotes<=28;

