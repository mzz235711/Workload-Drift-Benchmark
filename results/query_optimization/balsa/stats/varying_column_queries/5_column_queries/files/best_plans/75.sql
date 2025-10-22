/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND u.DownVotes<=3 AND u.CreationDate<='2014-08-24 15:03:32'::timestamp;

