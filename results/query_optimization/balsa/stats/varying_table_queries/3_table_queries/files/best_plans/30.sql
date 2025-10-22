/*+ MergeJoin(v u p)
 MergeJoin(v u)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading(((v u) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score=4;

