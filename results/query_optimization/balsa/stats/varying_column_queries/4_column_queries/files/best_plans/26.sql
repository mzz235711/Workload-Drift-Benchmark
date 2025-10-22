/*+ HashJoin(c pl p v)
 MergeJoin(c pl p)
 HashJoin(c pl)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((((c pl) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-01 23:58:55'::timestamp AND p.Score=1 AND p.AnswerCount<=6 AND p.FavoriteCount>=0;

