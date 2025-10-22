/*+ MergeJoin(b p)
 IndexScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.FavoriteCount>=0;

