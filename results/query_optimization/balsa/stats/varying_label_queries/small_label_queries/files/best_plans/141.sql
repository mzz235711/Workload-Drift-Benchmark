/*+ MergeJoin(v p u)
 NestLoop(v p)
 IndexScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading(((v p) u)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate='2010-07-27 00:00:00'::timestamp AND p.Score>=-2;

