/*+ MergeJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND p.Score>=0 AND p.Score<=41 AND p.FavoriteCount<=6;

