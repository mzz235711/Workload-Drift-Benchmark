/*+ MergeJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.Score>=0 AND p.Score<=21 AND p.AnswerCount>=0 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

