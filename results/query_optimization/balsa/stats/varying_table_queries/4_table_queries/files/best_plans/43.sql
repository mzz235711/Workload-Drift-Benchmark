/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-10 06:55:21'::timestamp AND pl.CreationDate<='2014-07-23 11:38:59'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

