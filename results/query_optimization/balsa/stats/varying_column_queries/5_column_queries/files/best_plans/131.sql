/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.Score<=109 AND p.FavoriteCount>=0 AND p.FavoriteCount<=18 AND p.CreationDate>='2010-11-02 16:49:01'::timestamp;

