/*+ MergeJoin(v pl p ph c b)
 NestLoop(v pl p ph c)
 MergeJoin(v pl p ph)
 HashJoin(pl p ph)
 HashJoin(pl p)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(c)
 SeqScan(b)
 Leading((((v ((pl p) ph)) c) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-30 15:02:01'::timestamp AND pl.CreationDate<='2014-07-10 08:57:37'::timestamp AND v.VoteTypeId=2;

