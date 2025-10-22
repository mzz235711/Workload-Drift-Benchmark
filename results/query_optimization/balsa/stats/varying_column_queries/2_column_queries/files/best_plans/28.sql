/*+ MergeJoin(c v u ph)
 HashJoin(v u ph)
 HashJoin(v u)
 IndexScan(c)
 IndexScan(v)
 SeqScan(u)
 IndexScan(ph)
 Leading((c ((v u) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND u.Views=0 AND u.DownVotes>=0;

