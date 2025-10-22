/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score>=-3 AND p.ViewCount>=0 AND p.ViewCount<=2959 AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-22 04:34:32'::timestamp AND u.DownVotes<=1 AND u.UpVotes>=0;

