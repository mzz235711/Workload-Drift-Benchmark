/*+ HashJoin(c v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.AnswerCount<=4 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=10;

