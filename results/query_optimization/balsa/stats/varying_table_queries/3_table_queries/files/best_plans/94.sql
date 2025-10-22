/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=-1 AND p.Score<=25 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND pl.LinkTypeId=3 AND pl.CreationDate>='2010-10-02 00:22:45'::timestamp;

