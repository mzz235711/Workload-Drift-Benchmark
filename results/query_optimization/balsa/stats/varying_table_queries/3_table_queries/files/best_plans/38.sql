/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND pl.CreationDate>='2011-12-21 08:58:44'::timestamp AND pl.CreationDate<='2014-07-27 23:18:51'::timestamp AND u.CreationDate>='2010-07-20 05:57:22'::timestamp AND u.CreationDate<='2014-09-09 06:05:25'::timestamp;

