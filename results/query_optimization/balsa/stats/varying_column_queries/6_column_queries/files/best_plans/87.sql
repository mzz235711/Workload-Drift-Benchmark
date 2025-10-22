/*+ MergeJoin(b v p u)
 HashJoin(v p u)
 HashJoin(p u)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.Score=1 AND p.ViewCount<=9741 AND p.AnswerCount>=0 AND b.Date>='2010-07-19 19:39:10'::timestamp AND u.DownVotes<=0;

