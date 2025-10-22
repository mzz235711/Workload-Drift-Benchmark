/*+ MergeJoin(ph c p)
 HashJoin(c p)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate='2013-07-04 16:13:27'::timestamp AND p.Score>=-2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-08 04:15:04'::timestamp AND ph.CreationDate<='2014-08-22 09:04:37'::timestamp;

