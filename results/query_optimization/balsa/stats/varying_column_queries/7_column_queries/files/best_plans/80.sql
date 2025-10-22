/*+ HashJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=4637 AND p.FavoriteCount>=0 AND p.FavoriteCount<=11 AND p.CreationDate>='2010-07-19 19:34:44'::timestamp AND u.Reputation<=133 AND u.Views<=51;

