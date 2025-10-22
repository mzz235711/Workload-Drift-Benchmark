/*+ MergeJoin(c ph u v)
 MergeJoin(ph u v)
 HashJoin(u v)
 IndexScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND v.CreationDate='2011-11-29 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=105 AND u.DownVotes<=212 AND u.CreationDate>='2010-10-06 19:44:06'::timestamp;

