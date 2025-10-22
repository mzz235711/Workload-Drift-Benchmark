/*+ HashJoin(c u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-2 AND p.Score<=16 AND p.ViewCount<=4454 AND p.AnswerCount<=6 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-31 15:46:05'::timestamp AND p.CreationDate<='2014-09-06 21:29:15'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=41 AND u.CreationDate>='2010-10-21 17:42:19'::timestamp;

