/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 SeqScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.CreationDate>='2010-07-19 19:30:07'::timestamp AND u.Views>=0 AND u.UpVotes>=0;

