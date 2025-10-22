/*+ MergeJoin(ph v pl p u b)
 MergeJoin(v pl p u b)
 MergeJoin(pl p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(pl)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (pl (p (u b)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1;

