/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6;

