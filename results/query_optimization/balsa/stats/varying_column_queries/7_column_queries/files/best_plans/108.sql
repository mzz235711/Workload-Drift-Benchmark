/*+ HashJoin(v p pl u)
 NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading((v ((p pl) u))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=3 AND p.FavoriteCount>=0 AND p.FavoriteCount<=25 AND p.CreationDate<='2014-08-24 18:45:11'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.CreationDate<='2014-09-10 19:33:49'::timestamp;

