/*+ HashJoin(ph v u c pl p)
 HashJoin(v u c pl p)
 HashJoin(u c pl p)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (v (u (c (pl p)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND p.Score>=-1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-02 13:53:47'::timestamp AND p.CreationDate<='2014-09-11 14:42:03'::timestamp AND ph.CreationDate>='2011-01-12 08:54:45'::timestamp AND ph.CreationDate<='2014-09-11 08:01:32'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=630;

