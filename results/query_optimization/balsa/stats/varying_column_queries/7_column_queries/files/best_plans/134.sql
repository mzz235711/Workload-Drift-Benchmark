/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate<='2014-08-24 00:03:01'::timestamp AND pl.CreationDate<='2014-09-07 13:23:38'::timestamp;

