/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-02-08 04:09:23'::timestamp AND pl.CreationDate<='2014-07-27 17:01:12'::timestamp AND p.Score>=-2 AND p.Score<=23 AND p.FavoriteCount<=9 AND b.Date='2014-06-30 15:21:10'::timestamp;

