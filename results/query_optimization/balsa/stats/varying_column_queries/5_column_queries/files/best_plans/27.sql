/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-07 09:32:00'::timestamp AND c.CreationDate<='2014-09-13 20:54:31'::timestamp AND p.AnswerCount<=3 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1;

