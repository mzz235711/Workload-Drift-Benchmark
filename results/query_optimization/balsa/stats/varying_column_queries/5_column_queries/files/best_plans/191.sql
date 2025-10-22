/*+ HashJoin(pl p u)
 MergeJoin(p u)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=2536 AND p.CommentCount<=8 AND p.CreationDate>='2010-07-21 16:04:18'::timestamp AND p.CreationDate<='2014-09-10 23:33:28'::timestamp;

