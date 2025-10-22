/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate>='2010-10-26 20:57:01'::timestamp AND p.AnswerCount>=0 AND p.FavoriteCount<=7 AND p.CreationDate>='2010-08-07 07:35:58'::timestamp AND p.CreationDate<='2014-09-12 18:13:44'::timestamp AND u.CreationDate>='2010-07-21 10:25:49'::timestamp AND u.CreationDate<='2014-09-11 04:34:18'::timestamp;

