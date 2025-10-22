/*+ MergeJoin(u b p pl)
 HashJoin(p pl)
 HashJoin(u b)
 IndexScan(u)
 IndexScan(b)
 SeqScan(p)
 IndexScan(pl)
 Leading(((u b) (p pl))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Views>=0;

