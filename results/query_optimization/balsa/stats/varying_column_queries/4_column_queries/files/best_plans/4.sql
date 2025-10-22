/*+ MergeJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 IndexScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND u.Views>=0 AND u.Views<=90 AND u.DownVotes>=0 AND u.UpVotes>=0;

