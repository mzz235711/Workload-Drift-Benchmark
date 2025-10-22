/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c ((v u) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Views<=37 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.UpVotes>=0 AND u.UpVotes<=152 AND u.CreationDate>='2010-11-25 21:01:32'::timestamp AND u.CreationDate<='2014-08-04 18:49:55'::timestamp;

