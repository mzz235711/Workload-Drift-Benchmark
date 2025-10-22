/*+ NestLoop(u pl p b)
 HashJoin(u pl p)
 NestLoop(pl p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (pl p)) b)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=45 AND u.DownVotes<=1 AND u.UpVotes>=0;

