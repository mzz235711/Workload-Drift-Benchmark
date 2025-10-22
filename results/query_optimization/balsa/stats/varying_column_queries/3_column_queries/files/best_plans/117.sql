/*+ HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.CommentCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=1;

