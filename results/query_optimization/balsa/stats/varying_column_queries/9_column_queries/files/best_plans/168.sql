/*+ HashJoin(c v pl p ph)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(ph)
 Leading(((c (v (pl p))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=17 AND p.AnswerCount>=0 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-02-18 00:06:24'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

