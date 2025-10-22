/*+ HashJoin(c ph v u)
 MergeJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-07-19 20:11:13'::timestamp AND u.Views>=0 AND u.Views<=110;

