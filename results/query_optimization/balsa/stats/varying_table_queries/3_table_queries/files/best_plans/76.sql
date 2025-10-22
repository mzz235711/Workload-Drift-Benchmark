/*+ MergeJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.Score<=17 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-26 22:22:21'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-08-08 16:04:39'::timestamp AND u.Reputation<=5564 AND u.Views>=0 AND u.Views<=220;

