/*+ HashJoin(ph u pl p b v)
 HashJoin(u pl p b v)
 HashJoin(u pl p b)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((ph (((u (pl p)) b) v))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.FavoriteCount>=0 AND p.FavoriteCount<=15 AND p.CreationDate<='2014-08-22 17:35:03'::timestamp AND pl.CreationDate<='2014-08-26 15:36:58'::timestamp AND ph.PostHistoryTypeId=4;

