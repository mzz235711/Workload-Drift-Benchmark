/*+ HashJoin(v c u p pl ph)
 HashJoin(v c u p pl)
 MergeJoin(c u p pl)
 MergeJoin(c u p)
 MergeJoin(c u)
 SeqScan(v)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 IndexScan(pl)
 SeqScan(ph)
 Leading(((v (((c u) p) pl)) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate<='2014-09-11 12:30:36'::timestamp AND p.ViewCount<=14855 AND pl.CreationDate>='2011-02-12 12:45:45'::timestamp AND pl.CreationDate<='2014-09-12 02:11:22'::timestamp AND ph.CreationDate<='2014-08-22 20:04:25'::timestamp AND u.DownVotes>=0 AND u.CreationDate>='2010-07-19 19:15:49'::timestamp;

