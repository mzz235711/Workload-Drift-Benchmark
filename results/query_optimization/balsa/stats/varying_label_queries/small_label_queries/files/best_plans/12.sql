/*+ NestLoop(p v pl u)
 HashJoin(p v pl)
 HashJoin(p v)
 SeqScan(p)
 SeqScan(v)
 SeqScan(pl)
 IndexScan(u)
 Leading((((p v) pl) u)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-07-30 15:43:28'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-05 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=82 AND u.CreationDate>='2010-08-25 16:26:36'::timestamp;

