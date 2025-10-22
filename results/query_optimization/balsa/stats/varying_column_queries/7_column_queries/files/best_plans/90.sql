/*+ MergeJoin(v p c u)
 HashJoin(p c u)
 HashJoin(c u)
 IndexScan(v)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((v (p (c u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=17062 AND p.AnswerCount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.UpVotes=2;

