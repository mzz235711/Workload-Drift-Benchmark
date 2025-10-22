/*+ HashJoin(p v u)
 MergeJoin(v u)
 IndexScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score<=18 AND p.ViewCount>=0 AND u.Views>=0 AND u.Views<=72 AND u.UpVotes<=94;

